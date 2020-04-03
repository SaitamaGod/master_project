// Auto-generated. Do not edit!

// (in-package dyret_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RevoluteState = require('./RevoluteState.js');
let PrismaticState = require('./PrismaticState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class State {
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
        this.revolute = new Array(12).fill(new RevoluteState());
      }
      if (initObj.hasOwnProperty('prismatic')) {
        this.prismatic = initObj.prismatic
      }
      else {
        this.prismatic = new Array(8).fill(new PrismaticState());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [revolute] has the right length
    if (obj.revolute.length !== 12) {
      throw new Error('Unable to serialize array field revolute - length must be 12')
    }
    // Serialize message field [revolute]
    obj.revolute.forEach((val) => {
      bufferOffset = RevoluteState.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [prismatic] has the right length
    if (obj.prismatic.length !== 8) {
      throw new Error('Unable to serialize array field prismatic - length must be 8')
    }
    // Serialize message field [prismatic]
    obj.prismatic.forEach((val) => {
      bufferOffset = PrismaticState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [revolute]
    len = 12;
    data.revolute = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.revolute[i] = RevoluteState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [prismatic]
    len = 8;
    data.prismatic = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.prismatic[i] = PrismaticState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 444;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dyret_common/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '199e494597c0c7034abea6bdf1e7efee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is intended as the output of Dyret
    
    # Header for general bookkeeping
    std_msgs/Header header
    
    # State of revolute joints
    dyret_common/RevoluteState[12] revolute
    # State of prismatic joints
    dyret_common/PrismaticState[8] prismatic
    
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
    MSG: dyret_common/RevoluteState
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
    
    ================================================================================
    MSG: dyret_common/PrismaticState
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
    const resolved = new State(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.revolute !== undefined) {
      resolved.revolute = new Array(12)
      for (let i = 0; i < resolved.revolute.length; ++i) {
        if (msg.revolute.length > i) {
          resolved.revolute[i] = RevoluteState.Resolve(msg.revolute[i]);
        }
        else {
          resolved.revolute[i] = new RevoluteState();
        }
      }
    }
    else {
      resolved.revolute = new Array(12).fill(new RevoluteState())
    }

    if (msg.prismatic !== undefined) {
      resolved.prismatic = new Array(8)
      for (let i = 0; i < resolved.prismatic.length; ++i) {
        if (msg.prismatic.length > i) {
          resolved.prismatic[i] = PrismaticState.Resolve(msg.prismatic[i]);
        }
        else {
          resolved.prismatic[i] = new PrismaticState();
        }
      }
    }
    else {
      resolved.prismatic = new Array(8).fill(new PrismaticState())
    }

    return resolved;
    }
};

module.exports = State;
