#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <kalman/vector9.h>
#include <Eigen/Core>
#include <Eigen/Eigen>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <Eigen/Geometry>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Quaternion.h>
#include <sensor_msgs/Imu.h>
#include <mavros_msgs/OpticalFlowRad.h>
#include <px_comm/OpticalFlow.h>
#include <iostream>
#include <geometry_msgs/Vector3.h>
#include "stdio.h"
#include <fstream>
#include "std_msgs/Float64MultiArray.h"
using namespace std;
using namespace Eigen;
 std_msgs::Float64MultiArray cov;
 void predictstep();
double t1,t2;
int flag=0;
Matrix<float,3,3> M;
Matrix<float,3,3> R_inv;
/*I am assuming I get Vx Vy H A from some ++sensor*/
 float Vx=0,Vy=0,Z=0,Ax=0,Ay=0,Az=0,ar_x=0,ar_y=0,ar_z=0;        /*converted below H to be perpemdicular to quad*/
//these are
  kalman::vector9 sm;//want to change
  //want to change

 Matrix<float,6,1> E;


//for aruco state [x,y,z]=pos , [ar_x,y,z]=aruco pos
 float x=0,y=0,z=0,vx=0,vy=0,vz=0;
 float t,tt;

 Matrix<float,9,1> s;//state
 Matrix<float,9,9> Pf;
 Matrix<float,9,6> K;
 Matrix<float,6,6> temp;   //initialise s
 Matrix<float,9,9> F;//x^k = F * x^k−1+Bkuk
 Matrix<float,9,1> sf;
 Matrix<float,9,3> B;//for the position x^k = F * x^k−1+ B * uk
 Matrix<float,6,9> H;
 Matrix<float,9,9> P;
 Matrix<float,9,1> s2;
 Matrix<float,9,9> P2;

bool check = false,ar_flag=false;


Matrix<float,3,1> E_arc;
Matrix<float,3,1> E_mult;
Matrix<float,6,1> Ec_new;
Matrix<float,9,9> Q;      /*decide Q for external disturbances*/
Matrix<float,6,6> R;     /**/
Matrix<float,3,1> u;
Matrix<float,6,1> Ec;

ros::Publisher pub;
ros::Publisher pub_co;

void VH_callback(const px_comm::OpticalFlow::ConstPtr& msg){
  flag++;
  Vx=msg->velocity_x;
  Vy=msg->velocity_y;
  Z=msg->ground_distance;             // DO z COS THETA
  E(0,0)=Vx;
  E(1,0)=Vy;
  E(2,0)=Z;

  ar_flag=true;

      t=t2-t1;
      if(flag<=1 || t==0){
        t1=t2;
        return;
      }


      tt=0.5*(t*t);


  F << 1,0,0,t,0,0,0,0,0,
     0,1,0,0,t,0,0,0,0,
     0,0,1,0,0,t,0,0,0,
     0,0,0,1,0,0,0,0,0,
     0,0,0,0,1,0,0,0,0,
     0,0,0,0,0,1,0,0,0,
     0,0,0,0,0,0,1,0,0,
     0,0,0,0,0,0,0,1,0,
     0,0,0,0,0,0,0,0,1;

     // 0.5 a*t^2
  B << tt,0,0,
     0,tt,0,
     0,0,tt,
     t,0,0,
     0,t,0,
     0,0,t,
     0,0,0,
     0,0,0,
     0,0,0;

     predictstep();
     if(check && ar_flag==true){

     //xx << "s:"<< endl << s << endl << "P:"<<endl<<P <<endl;

     temp=H*(P*H.transpose())+R;


    K=P*(H.transpose()*temp.inverse());
       // xx << "K:"<<endl<< K<<endl;
    sf=s+K*(E-Ec_new);
        //xx<< "E:"<<endl <<E <<endl<<"Ec:"<<endl<<Ec<<endl;
    Pf=P-(K*(H*P));
     //xx <<"sf:"<<endl<<sf<<endl<<"Pf:"<<endl<<Pf<<endl;

    P=Pf;
    s=sf;

    cov.data.clear();
      for(int i=0;i<9;i++)
      {
        for(int j=0;j<9;j++)
        {
          cov.data.push_back(Pf(i,j));
        }
      }


    sm.m1=sf(0,0);
    sm.m2=sf(1,0);
    sm.m3=sf(2,0);
    sm.m4=sf(3,0);
    sm.m5=sf(4,0);
    sm.m6=sf(5,0);
    sm.m7=sf(6,0);
    sm.m8=sf(7,0);
    sm.m9=sf(8,0);


  }

  ar_flag=false;

    pub.publish(sm);
    pub_co.publish(cov);



  t1=t2;



}
void imuCallback(const sensor_msgs::Imu::ConstPtr& msg){
  double x,y,z,w;

  x=msg->orientation.x;
  y=msg->orientation.y;
  z=msg->orientation.z;
  w=msg->orientation.w;
  Quaternionf quat;
  quat=Eigen::Quaternionf(w,x,y,z);
  //  xx <<"quat:"<<endl<<quat.toRotationMatrix()<<endl;

  M=quat.toRotationMatrix();
  R_inv=M.inverse();

  Ax=msg->linear_acceleration.x;
  Ay=msg->linear_acceleration.y;
  Az=msg->linear_acceleration.z;
  u(0,0)=Ax;
  u(1,0)=Ay;
  u(2,0)=Az;

}

void ahrsCallback(const geometry_msgs::Quaternion::ConstPtr& msg)
{
  double x,y,z,w;

  x=msg->x;
  y=msg->y;
  z=msg->z;
  w=msg->w;
  Quaternionf quat;
  quat=Eigen::Quaternionf(w,x,y,z);
    //xx <<"quat:"<<endl<<quat.toRotationMatrix()<<endl;
  cout<<x<<y<<z<<w<<endl<<endl;
  M=quat.toRotationMatrix();
}

void predictstep(){
  if(M(2,2)==0 )
    return;
  else
    check= true;
  u=M*u;
  u(2,0) -= 9.81;

  s2=(F*s)+(B*u);

  P2=((F*P)*(F.transpose()))+Q;

  s=s2;
  P=P2;

  Ec=H*s;
  Ec(2,0)=Ec(2,0)/(M(2,2));

  E_arc<<Ec(3,0),Ec(4,0),Ec(5,0);
  E_mult=(M.inverse())*E_arc;
  cout << E_arc << endl<<endl;
  Ec_new<<Ec(0,0),Ec(1,0),Ec(2,0),E_mult;

  //xx <<"M:"<<endl<<M<<endl;

}


void arucocallback(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
  ar_x=msg->pose.position.y;
  ar_y=msg->pose.position.x;
  ar_z=-msg->pose.position.z;
  // we have to change axes as per h
  E(3,0)=ar_x;
  E(4,0)=ar_y;
  E(5,0)=ar_z;


}


int main(int argc, char **argv) {
  ros::init(argc,argv,"kalman");
  ros::NodeHandle nh;

    ros::Subscriber px4_sub = nh.subscribe<px_comm::OpticalFlow>
          ("/px4flow/opt_flow", 10, VH_callback);

          //getting the euler angles from imusf
  //ros::Subscriber ahrs_sub = nh.subscribe<geometry_msgs::Quaternion>
  //       ("/imusf",400,ahrsCallback);

  ros::Subscriber imu_sub = nh.subscribe<sensor_msgs::Imu>
          ("/mavros/imu/data",400,imuCallback);

  pub = nh.advertise<kalman::vector9>
          ("kalman/result", 400);
  pub_co = nh.advertise<std_msgs::Float64MultiArray>
          ("kalman/covariance", 400);
  ros::Subscriber sub = nh.subscribe<geometry_msgs::PoseStamped>
          ("aruco_single/pose", 1000, arucocallback);

  ros::Rate rate(400);
  t1=0;
//x^k = F * x^k−1+Bkuk
  s << 0,0,0,0,0,0,0,0,0;
  //This is to get z,vx,vy on multiplication state
  H << 0,0,0,1,0,0,0,0,0,
       0,0,0,0,1,0,0,0,0,
       0,0,1,0,0,0,0,0,0,
       -1,0,0,0,0,0,1,0,0,
       0,-1,0,0,0,0,0,1,0,
       0,0,-1,0,0,0,0,0,1;


  //
  P << .001,0,0,0,0,0,0,0,0,
       0,.001,0,0,0,0,0,0,0,
       0,  10,0,0,0,0,0,0,0,
       0,0,0,.001,0,0,0,0,0,
       0,0,0,0,.001,0,0,0,0,
       0,0,0,0,0,.001,0,0,0,
       0,0,0,0,0,0,  .1,0,0,
       0,0,0,0,0,0,0,  .1,0,
       0,0,0,0,0,0,0,0,  .1;


  R <<     .001,0,0,0,0,0,
       0,    .001,0,0,0,0,
       0,0,0.002,0,0,0,
       0,0,0, 0.0001,0,0,
       0,0,0,0, 0.0001,0,
       0,0,0,0,0, 0.0001;


  Q << .001,0,0,0,0,0,0,0,0,
       0,.001,0,0,0,0,0,0,0,
       0,0,   .5,0,0,0,0,0,0,
       0,0,0,.001,0,0,0,0,0,
       0,0,0,0,.001,0,0,0,0,
       0,0,0,0,0,   .01,0,0,0,
       0,0,0,0,0,   0,1000,0,0,
       0,0,0,0,0,   0,0,1000,0,
       0,0,0,0,0,   0,0,0,1000;







  while(ros::ok()){

   t2=ros::Time::now().toSec();
   std::cout << std::setprecision(20);



      ros::spinOnce();
      rate.sleep();




  }



  return 0;
}
