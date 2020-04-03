// Auto-generated. Do not edit!

// (in-package dyret_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RevoluteConfig = require('./RevoluteConfig.js');
let PrismaticConfig = require('./PrismaticConfig.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Configuration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.revolute = null;
      this.prismatic = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('revolute')) {
        this.revolute = initObj.revolute
      }
      else {
        this.revolute = new RevoluteConfig();
      }
      if (initObj.hasOwnProperty('prismatic')) {
        this.prismatic = initObj.prismatic
      }
      else {
        this.prismatic = new PrismaticConfig();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Configuration
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [revolute]
    bufferOffset = RevoluteConfig.serialize(obj.revolute, buffer, bufferOffset);
    // Serialize message field [prismatic]
    bufferOffset = PrismaticConfig.serialize(obj.prismatic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Configuration
    let len;
    let data = new Configuration(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [revolute]
    data.revolute = RevoluteConfig.deserialize(buffer, bufferOffset);
    // Deserialize message field [prismatic]
    data.prismatic = PrismaticConfig.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += RevoluteConfig.getMessageSize(object.revolute);
    length += PrismaticConfig.getMessageSize(object.prismatic);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dyret_common/Configuration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '118b2ad5ce546e709acfc0ea7ee160e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Configuration(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.revolute !== undefined) {
      resolved.revolute = RevoluteConfig.Resolve(msg.revolute)
    }
    else {
      resolved.revolute = new RevoluteConfig()
    }

    if (msg.prismatic !== undefined) {
      resolved.prismatic = PrismaticConfig.Resolve(msg.prismatic)
    }
    else {
      resolved.prismatic = new PrismaticConfig()
    }

    return resolved;
    }
};

module.exports = Configuration;
