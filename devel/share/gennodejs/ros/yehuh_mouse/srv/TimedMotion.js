// Auto-generated. Do not edit!

// (in-package yehuh_mouse.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TimedMotionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_hz = null;
      this.right_hz = null;
      this.duration_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('left_hz')) {
        this.left_hz = initObj.left_hz
      }
      else {
        this.left_hz = 0;
      }
      if (initObj.hasOwnProperty('right_hz')) {
        this.right_hz = initObj.right_hz
      }
      else {
        this.right_hz = 0;
      }
      if (initObj.hasOwnProperty('duration_ms')) {
        this.duration_ms = initObj.duration_ms
      }
      else {
        this.duration_ms = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimedMotionRequest
    // Serialize message field [left_hz]
    bufferOffset = _serializer.int16(obj.left_hz, buffer, bufferOffset);
    // Serialize message field [right_hz]
    bufferOffset = _serializer.int16(obj.right_hz, buffer, bufferOffset);
    // Serialize message field [duration_ms]
    bufferOffset = _serializer.uint32(obj.duration_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimedMotionRequest
    let len;
    let data = new TimedMotionRequest(null);
    // Deserialize message field [left_hz]
    data.left_hz = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [right_hz]
    data.right_hz = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [duration_ms]
    data.duration_ms = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yehuh_mouse/TimedMotionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd70b1c52f947559f961bed5aa1647139';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 left_hz
    int16 right_hz
    uint32 duration_ms
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimedMotionRequest(null);
    if (msg.left_hz !== undefined) {
      resolved.left_hz = msg.left_hz;
    }
    else {
      resolved.left_hz = 0
    }

    if (msg.right_hz !== undefined) {
      resolved.right_hz = msg.right_hz;
    }
    else {
      resolved.right_hz = 0
    }

    if (msg.duration_ms !== undefined) {
      resolved.duration_ms = msg.duration_ms;
    }
    else {
      resolved.duration_ms = 0
    }

    return resolved;
    }
};

class TimedMotionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sucess = null;
    }
    else {
      if (initObj.hasOwnProperty('sucess')) {
        this.sucess = initObj.sucess
      }
      else {
        this.sucess = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimedMotionResponse
    // Serialize message field [sucess]
    bufferOffset = _serializer.bool(obj.sucess, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimedMotionResponse
    let len;
    let data = new TimedMotionResponse(null);
    // Deserialize message field [sucess]
    data.sucess = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yehuh_mouse/TimedMotionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e8ad2f62d0edf01ac96b1e92459b490';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool sucess
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimedMotionResponse(null);
    if (msg.sucess !== undefined) {
      resolved.sucess = msg.sucess;
    }
    else {
      resolved.sucess = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TimedMotionRequest,
  Response: TimedMotionResponse,
  md5sum() { return 'a2afe94fc48ef0c10e4ed921900e9e4a'; },
  datatype() { return 'yehuh_mouse/TimedMotion'; }
};
