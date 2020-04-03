// Auto-generated. Do not edit!

// (in-package dyret_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Pose {
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
        this.revolute = [];
      }
      if (initObj.hasOwnProperty('prismatic')) {
        this.prismatic = initObj.prismatic
      }
      else {
        this.prismatic = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pose
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [revolute]
    bufferOffset = _arraySerializer.float32(obj.revolute, buffer, bufferOffset, null);
    // Serialize message field [prismatic]
    bufferOffset = _arraySerializer.float32(obj.prismatic, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pose
    let len;
    let data = new Pose(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [revolute]
    data.revolute = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [prismatic]
    data.prismatic = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.revolute.length;
    length += 4 * object.prismatic.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dyret_common/Pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd38af895dd2ed7501d4d52c672ffa71b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Joint pose
    std_msgs/Header header
    # There are 12 revolute joints that have to be
    # specified. Valid messages contains either 0 or 12 revolute angles
    float32[] revolute
    # For prismatic we allow either 0, 2 or 8 values, either
    # specifying all joints or 1 for top extension and one
    # for bottom extension for all legs
    float32[] prismatic
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pose(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.revolute !== undefined) {
      resolved.revolute = msg.revolute;
    }
    else {
      resolved.revolute = []
    }

    if (msg.prismatic !== undefined) {
      resolved.prismatic = msg.prismatic;
    }
    else {
      resolved.prismatic = []
    }

    return resolved;
    }
};

module.exports = Pose;
