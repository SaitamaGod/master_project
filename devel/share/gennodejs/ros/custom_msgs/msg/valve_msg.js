// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class valve_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.PWM_duty = null;
      this.PWM_freq = null;
      this.PWM_valve_nr = null;
    }
    else {
      if (initObj.hasOwnProperty('PWM_duty')) {
        this.PWM_duty = initObj.PWM_duty
      }
      else {
        this.PWM_duty = 0;
      }
      if (initObj.hasOwnProperty('PWM_freq')) {
        this.PWM_freq = initObj.PWM_freq
      }
      else {
        this.PWM_freq = 0;
      }
      if (initObj.hasOwnProperty('PWM_valve_nr')) {
        this.PWM_valve_nr = initObj.PWM_valve_nr
      }
      else {
        this.PWM_valve_nr = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type valve_msg
    // Serialize message field [PWM_duty]
    bufferOffset = _serializer.uint8(obj.PWM_duty, buffer, bufferOffset);
    // Serialize message field [PWM_freq]
    bufferOffset = _serializer.uint8(obj.PWM_freq, buffer, bufferOffset);
    // Serialize message field [PWM_valve_nr]
    bufferOffset = _serializer.uint8(obj.PWM_valve_nr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type valve_msg
    let len;
    let data = new valve_msg(null);
    // Deserialize message field [PWM_duty]
    data.PWM_duty = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PWM_freq]
    data.PWM_freq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PWM_valve_nr]
    data.PWM_valve_nr = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/valve_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2365f6928f3a6bbdd43c68c9166e3c42';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PWM_duty
    uint8 PWM_freq
    uint8 PWM_valve_nr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new valve_msg(null);
    if (msg.PWM_duty !== undefined) {
      resolved.PWM_duty = msg.PWM_duty;
    }
    else {
      resolved.PWM_duty = 0
    }

    if (msg.PWM_freq !== undefined) {
      resolved.PWM_freq = msg.PWM_freq;
    }
    else {
      resolved.PWM_freq = 0
    }

    if (msg.PWM_valve_nr !== undefined) {
      resolved.PWM_valve_nr = msg.PWM_valve_nr;
    }
    else {
      resolved.PWM_valve_nr = 0
    }

    return resolved;
    }
};

module.exports = valve_msg;
