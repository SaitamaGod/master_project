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

class RevoluteConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ids = null;
      this.parameters = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('parameters')) {
        this.parameters = initObj.parameters
      }
      else {
        this.parameters = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RevoluteConfig
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.uint8(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [parameters]
    bufferOffset = _arraySerializer.float64(obj.parameters, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RevoluteConfig
    let len;
    let data = new RevoluteConfig(null);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [parameters]
    data.parameters = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ids.length;
    length += 8 * object.parameters.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dyret_common/RevoluteConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c3a1b4e8ebd38227e8f3b98c311b902';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represents the configuration of the revolute joints
    #
    # - The configuration is applied to all joints if the id array is empty.
    # - All parameters are added sequentially in the parameter field, so
    # the length of this array may be a multiple of the number of joints in
    # cases where there are more than one parameter per joint needed
    
    # Joint IDs
    uint8[] ids
    
    # Configuration parameters
    float64[] parameters
    
    # Configuration type
    uint8 type
    
    uint8 TYPE_SET_SPEED      = 0
    uint8 TYPE_SET_PID        = 1
    uint8 TYPE_ENABLE_TORQUE  = 2
    uint8 TYPE_DISABLE_TORQUE = 3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RevoluteConfig(null);
    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.parameters !== undefined) {
      resolved.parameters = msg.parameters;
    }
    else {
      resolved.parameters = []
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
RevoluteConfig.Constants = {
  TYPE_SET_SPEED: 0,
  TYPE_SET_PID: 1,
  TYPE_ENABLE_TORQUE: 2,
  TYPE_DISABLE_TORQUE: 3,
}

module.exports = RevoluteConfig;
