// Auto-generated. Do not edit!

// (in-package kalman.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class vector9 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.m1 = null;
      this.m2 = null;
      this.m3 = null;
      this.m4 = null;
      this.m5 = null;
      this.m6 = null;
      this.m7 = null;
      this.m8 = null;
      this.m9 = null;
    }
    else {
      if (initObj.hasOwnProperty('m1')) {
        this.m1 = initObj.m1
      }
      else {
        this.m1 = 0.0;
      }
      if (initObj.hasOwnProperty('m2')) {
        this.m2 = initObj.m2
      }
      else {
        this.m2 = 0.0;
      }
      if (initObj.hasOwnProperty('m3')) {
        this.m3 = initObj.m3
      }
      else {
        this.m3 = 0.0;
      }
      if (initObj.hasOwnProperty('m4')) {
        this.m4 = initObj.m4
      }
      else {
        this.m4 = 0.0;
      }
      if (initObj.hasOwnProperty('m5')) {
        this.m5 = initObj.m5
      }
      else {
        this.m5 = 0.0;
      }
      if (initObj.hasOwnProperty('m6')) {
        this.m6 = initObj.m6
      }
      else {
        this.m6 = 0.0;
      }
      if (initObj.hasOwnProperty('m7')) {
        this.m7 = initObj.m7
      }
      else {
        this.m7 = 0.0;
      }
      if (initObj.hasOwnProperty('m8')) {
        this.m8 = initObj.m8
      }
      else {
        this.m8 = 0.0;
      }
      if (initObj.hasOwnProperty('m9')) {
        this.m9 = initObj.m9
      }
      else {
        this.m9 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vector9
    // Serialize message field [m1]
    bufferOffset = _serializer.float64(obj.m1, buffer, bufferOffset);
    // Serialize message field [m2]
    bufferOffset = _serializer.float64(obj.m2, buffer, bufferOffset);
    // Serialize message field [m3]
    bufferOffset = _serializer.float64(obj.m3, buffer, bufferOffset);
    // Serialize message field [m4]
    bufferOffset = _serializer.float64(obj.m4, buffer, bufferOffset);
    // Serialize message field [m5]
    bufferOffset = _serializer.float64(obj.m5, buffer, bufferOffset);
    // Serialize message field [m6]
    bufferOffset = _serializer.float64(obj.m6, buffer, bufferOffset);
    // Serialize message field [m7]
    bufferOffset = _serializer.float64(obj.m7, buffer, bufferOffset);
    // Serialize message field [m8]
    bufferOffset = _serializer.float64(obj.m8, buffer, bufferOffset);
    // Serialize message field [m9]
    bufferOffset = _serializer.float64(obj.m9, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vector9
    let len;
    let data = new vector9(null);
    // Deserialize message field [m1]
    data.m1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m2]
    data.m2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m3]
    data.m3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m4]
    data.m4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m5]
    data.m5 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m6]
    data.m6 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m7]
    data.m7 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m8]
    data.m8 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m9]
    data.m9 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kalman/vector9';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13d161e27dab4d6e323137aa0417c879';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new vector9(null);
    if (msg.m1 !== undefined) {
      resolved.m1 = msg.m1;
    }
    else {
      resolved.m1 = 0.0
    }

    if (msg.m2 !== undefined) {
      resolved.m2 = msg.m2;
    }
    else {
      resolved.m2 = 0.0
    }

    if (msg.m3 !== undefined) {
      resolved.m3 = msg.m3;
    }
    else {
      resolved.m3 = 0.0
    }

    if (msg.m4 !== undefined) {
      resolved.m4 = msg.m4;
    }
    else {
      resolved.m4 = 0.0
    }

    if (msg.m5 !== undefined) {
      resolved.m5 = msg.m5;
    }
    else {
      resolved.m5 = 0.0
    }

    if (msg.m6 !== undefined) {
      resolved.m6 = msg.m6;
    }
    else {
      resolved.m6 = 0.0
    }

    if (msg.m7 !== undefined) {
      resolved.m7 = msg.m7;
    }
    else {
      resolved.m7 = 0.0
    }

    if (msg.m8 !== undefined) {
      resolved.m8 = msg.m8;
    }
    else {
      resolved.m8 = 0.0
    }

    if (msg.m9 !== undefined) {
      resolved.m9 = msg.m9;
    }
    else {
      resolved.m9 = 0.0
    }

    return resolved;
    }
};

module.exports = vector9;
