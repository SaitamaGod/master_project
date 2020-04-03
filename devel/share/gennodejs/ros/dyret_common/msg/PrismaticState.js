// Auto-generated. Do not edit!

// (in-package dyret_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PrismaticState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.set_point = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0.0;
      }
      if (initObj.hasOwnProperty('set_point')) {
        this.set_point = initObj.set_point
      }
      else {
        this.set_point = 0.0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrismaticState
    // Serialize message field [position]
    bufferOffset = _serializer.float32(obj.position, buffer, bufferOffset);
    // Serialize message field [set_point]
    bufferOffset = _serializer.float32(obj.set_point, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float32(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrismaticState
    let len;
    let data = new PrismaticState(null);
    // Deserialize message field [position]
    data.position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [set_point]
    data.set_point = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dyret_common/PrismaticState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e64097716783a477a5eaca8bf59b2072';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represents the state of a single prismatic joint
    # it is not meant to be used alone, but as a part of other
    # messages, see 'State'.
    
    # Joint state
    float32 position
    
    # Controller state
    float32 set_point
    float32 error
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrismaticState(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0.0
    }

    if (msg.set_point !== undefined) {
      resolved.set_point = msg.set_point;
    }
    else {
      resolved.set_point = 0.0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0.0
    }

    return resolved;
    }
};

module.exports = PrismaticState;
