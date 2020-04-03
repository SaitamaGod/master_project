// Auto-generated. Do not edit!

// (in-package dyret_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Configuration = require('../msg/Configuration.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConfigureRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.configuration = null;
    }
    else {
      if (initObj.hasOwnProperty('configuration')) {
        this.configuration = initObj.configuration
      }
      else {
        this.configuration = new Configuration();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigureRequest
    // Serialize message field [configuration]
    bufferOffset = Configuration.serialize(obj.configuration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigureRequest
    let len;
    let data = new ConfigureRequest(null);
    // Deserialize message field [configuration]
    data.configuration = Configuration.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Configuration.getMessageSize(object.configuration);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dyret_common/ConfigureRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a206986259313c646df874e0cdc26d98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    dyret_common/Configuration configuration
    
    
    ================================================================================
    MSG: dyret_common/Configuration
    # This message represents the configuration of the servos
    #
    # - The configuration is applied to all servos if the id array is empty.
    # - All parameters are added sequentially in the parameter field, so
    # the length of this array may be a multiple of the number of servos in
    # cases where there are more than one parameter per servo needed
    
    # Header for general bookkeeping
    std_msgs/Header header
    
    dyret_common/RevoluteConfig revolute
    dyret_common/PrismaticConfig prismatic
    
    
    
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
    string frame_id
    
    ================================================================================
    MSG: dyret_common/RevoluteConfig
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
    
    ================================================================================
    MSG: dyret_common/PrismaticConfig
    # This message represents the configuration of the prismatic joints
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
    
    uint8 TYPE_SET_PID = 1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigureRequest(null);
    if (msg.configuration !== undefined) {
      resolved.configuration = Configuration.Resolve(msg.configuration)
    }
    else {
      resolved.configuration = new Configuration()
    }

    return resolved;
    }
};

class ConfigureResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigureResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigureResponse
    let len;
    let data = new ConfigureResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dyret_common/ConfigureResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb34524efe0030dce9b13d3bcb84b398';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 status
    
    uint8 STATUS_NOERROR   = 0
    
    uint8 STATUS_PARAMETER = 1
    
    uint8 STATUS_STATE     = 2
    
    
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigureResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
ConfigureResponse.Constants = {
  STATUS_NOERROR: 0,
  STATUS_PARAMETER: 1,
  STATUS_STATE: 2,
}

module.exports = {
  Request: ConfigureRequest,
  Response: ConfigureResponse,
  md5sum() { return 'a1f60ce87d284338086c76bca2c0d0f8'; },
  datatype() { return 'dyret_common/Configure'; }
};
