// Auto-generated. Do not edit!

// (in-package kalman.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let vector9 = require('./vector9.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class matrix6 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.r1 = null;
      this.r2 = null;
      this.r3 = null;
      this.r4 = null;
      this.r5 = null;
      this.r6 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('r1')) {
        this.r1 = initObj.r1
      }
      else {
        this.r1 = new vector9();
      }
      if (initObj.hasOwnProperty('r2')) {
        this.r2 = initObj.r2
      }
      else {
        this.r2 = new vector9();
      }
      if (initObj.hasOwnProperty('r3')) {
        this.r3 = initObj.r3
      }
      else {
        this.r3 = new vector9();
      }
      if (initObj.hasOwnProperty('r4')) {
        this.r4 = initObj.r4
      }
      else {
        this.r4 = new vector9();
      }
      if (initObj.hasOwnProperty('r5')) {
        this.r5 = initObj.r5
      }
      else {
        this.r5 = new vector9();
      }
      if (initObj.hasOwnProperty('r6')) {
        this.r6 = initObj.r6
      }
      else {
        this.r6 = new vector9();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type matrix6
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [r1]
    bufferOffset = vector9.serialize(obj.r1, buffer, bufferOffset);
    // Serialize message field [r2]
    bufferOffset = vector9.serialize(obj.r2, buffer, bufferOffset);
    // Serialize message field [r3]
    bufferOffset = vector9.serialize(obj.r3, buffer, bufferOffset);
    // Serialize message field [r4]
    bufferOffset = vector9.serialize(obj.r4, buffer, bufferOffset);
    // Serialize message field [r5]
    bufferOffset = vector9.serialize(obj.r5, buffer, bufferOffset);
    // Serialize message field [r6]
    bufferOffset = vector9.serialize(obj.r6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type matrix6
    let len;
    let data = new matrix6(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [r1]
    data.r1 = vector9.deserialize(buffer, bufferOffset);
    // Deserialize message field [r2]
    data.r2 = vector9.deserialize(buffer, bufferOffset);
    // Deserialize message field [r3]
    data.r3 = vector9.deserialize(buffer, bufferOffset);
    // Deserialize message field [r4]
    data.r4 = vector9.deserialize(buffer, bufferOffset);
    // Deserialize message field [r5]
    data.r5 = vector9.deserialize(buffer, bufferOffset);
    // Deserialize message field [r6]
    data.r6 = vector9.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 432;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kalman/matrix6';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '699fb7d217df09274ee066bff5a81e6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    vector9 r1
    vector9 r2
    vector9 r3
    vector9 r4
    vector9 r5
    vector9 r6
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: kalman/vector9
    float64 m1
    float64 m2
    float64 m3
    float64 m4
    float64 m5
    float64 m6
    float64 m7
    float64 m8
    float64 m9
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new matrix6(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.r1 !== undefined) {
      resolved.r1 = vector9.Resolve(msg.r1)
    }
    else {
      resolved.r1 = new vector9()
    }

    if (msg.r2 !== undefined) {
      resolved.r2 = vector9.Resolve(msg.r2)
    }
    else {
      resolved.r2 = new vector9()
    }

    if (msg.r3 !== undefined) {
      resolved.r3 = vector9.Resolve(msg.r3)
    }
    else {
      resolved.r3 = new vector9()
    }

    if (msg.r4 !== undefined) {
      resolved.r4 = vector9.Resolve(msg.r4)
    }
    else {
      resolved.r4 = new vector9()
    }

    if (msg.r5 !== undefined) {
      resolved.r5 = vector9.Resolve(msg.r5)
    }
    else {
      resolved.r5 = new vector9()
    }

    if (msg.r6 !== undefined) {
      resolved.r6 = vector9.Resolve(msg.r6)
    }
    else {
      resolved.r6 = new vector9()
    }

    return resolved;
    }
};

module.exports = matrix6;
