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

class ActuatorBoardCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActuatorBoardCommand
    // Serialize message field [length]
    bufferOffset = _arraySerializer.float32(obj.length, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActuatorBoardCommand
    let len;
    let data = new ActuatorBoardCommand(null);
    // Deserialize message field [length]
    data.length = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.length.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dyret_hardware/ActuatorBoardCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d38d684f1da83a97953821045e0f85c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Length either specifies:
    #   One length for all links
    #   Two lengths - the first for all femurs, the second for all tibias
    #   Individual lengths for each actuator
    
    float32[] length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActuatorBoardCommand(null);
    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = []
    }

    return resolved;
    }
};

module.exports = ActuatorBoardCommand;
