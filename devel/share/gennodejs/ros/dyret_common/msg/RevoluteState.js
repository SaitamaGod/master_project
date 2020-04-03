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

class RevoluteState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.velocity = null;
      this.current = null;
      this.voltage = null;
      this.temperature = null;
      this.set_point = null;
      this.error = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
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
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RevoluteState
    // Serialize message field [position]
    bufferOffset = _serializer.float32(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float32(obj.velocity, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [set_point]
    bufferOffset = _serializer.float32(obj.set_point, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float32(obj.error, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RevoluteState
    let len;
    let data = new RevoluteState(null);
    // Deserialize message field [position]
    data.position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [set_point]
    data.set_point = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dyret_common/RevoluteState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a0202d7c351899cbb1b8a94d488c4ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represents the state of a single revolute joint
    # it is not meant to be used alone, but as a part of other
    # messages, see 'State'.
    
    # Joint state
    float32 position
    float32 velocity
    float32 current
    
    # Physical state
    float32 voltage
    float32 temperature
    
    # Controller state
    float32 set_point
    float32 error
    
    # Joint status:
    uint8 status
    
    uint8 STATUS_NOERROR       = 0
    uint8 STATUS_INSTRUCTION   = 1
    uint8 STATUS_OVERLOAD      = 2
    uint8 STATUS_CHECKSUM      = 3
    uint8 STATUS_RANGE         = 4
    uint8 STATUS_OVERHEATING   = 5
    uint8 STATUS_ANGLE_LIMIT   = 6
    uint8 STATUS_INPUT_VOLTAGE = 7
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RevoluteState(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
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

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
RevoluteState.Constants = {
  STATUS_NOERROR: 0,
  STATUS_INSTRUCTION: 1,
  STATUS_OVERLOAD: 2,
  STATUS_CHECKSUM: 3,
  STATUS_RANGE: 4,
  STATUS_OVERHEATING: 5,
  STATUS_ANGLE_LIMIT: 6,
  STATUS_INPUT_VOLTAGE: 7,
}

module.exports = RevoluteState;
