// Auto-generated. Do not edit!

// (in-package dyret_hardware.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ActuatorBoardState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActuatorBoardState
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 8) {
      throw new Error('Unable to serialize array field position - length must be 8')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActuatorBoardState
    let len;
    let data = new ActuatorBoardState(null);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dyret_hardware/ActuatorBoardState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61a2e72fc291b8e237e79adac79aac78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[8] position
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActuatorBoardState(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(8).fill(0)
    }

    return resolved;
    }
};

module.exports = ActuatorBoardState;
