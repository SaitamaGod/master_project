# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dyret_common/ConfigureRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dyret_common.msg
import std_msgs.msg

class ConfigureRequest(genpy.Message):
  _md5sum = "a206986259313c646df874e0cdc26d98"
  _type = "dyret_common/ConfigureRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
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
"""
  __slots__ = ['configuration']
  _slot_types = ['dyret_common/Configuration']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       configuration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ConfigureRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.configuration is None:
        self.configuration = dyret_common.msg.Configuration()
    else:
      self.configuration = dyret_common.msg.Configuration()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.configuration.header.seq, _x.configuration.header.stamp.secs, _x.configuration.header.stamp.nsecs))
      _x = self.configuration.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.configuration.revolute.ids
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.configuration.revolute.parameters)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.configuration.revolute.parameters))
      buff.write(_get_struct_B().pack(self.configuration.revolute.type))
      _x = self.configuration.prismatic.ids
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.configuration.prismatic.parameters)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.configuration.prismatic.parameters))
      buff.write(_get_struct_B().pack(self.configuration.prismatic.type))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.configuration is None:
        self.configuration = dyret_common.msg.Configuration()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.configuration.header.seq, _x.configuration.header.stamp.secs, _x.configuration.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.configuration.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.configuration.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.configuration.revolute.ids = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.configuration.revolute.parameters = struct.unpack(pattern, str[start:end])
      start = end
      end += 1
      (self.configuration.revolute.type,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.configuration.prismatic.ids = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.configuration.prismatic.parameters = struct.unpack(pattern, str[start:end])
      start = end
      end += 1
      (self.configuration.prismatic.type,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.configuration.header.seq, _x.configuration.header.stamp.secs, _x.configuration.header.stamp.nsecs))
      _x = self.configuration.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.configuration.revolute.ids
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.configuration.revolute.parameters)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.configuration.revolute.parameters.tostring())
      buff.write(_get_struct_B().pack(self.configuration.revolute.type))
      _x = self.configuration.prismatic.ids
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.configuration.prismatic.parameters)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.configuration.prismatic.parameters.tostring())
      buff.write(_get_struct_B().pack(self.configuration.prismatic.type))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.configuration is None:
        self.configuration = dyret_common.msg.Configuration()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.configuration.header.seq, _x.configuration.header.stamp.secs, _x.configuration.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.configuration.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.configuration.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.configuration.revolute.ids = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.configuration.revolute.parameters = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 1
      (self.configuration.revolute.type,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.configuration.prismatic.ids = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.configuration.prismatic.parameters = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 1
      (self.configuration.prismatic.type,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dyret_common/ConfigureResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ConfigureResponse(genpy.Message):
  _md5sum = "fb34524efe0030dce9b13d3bcb84b398"
  _type = "dyret_common/ConfigureResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
uint8 status

uint8 STATUS_NOERROR   = 0

uint8 STATUS_PARAMETER = 1

uint8 STATUS_STATE     = 2


string message

"""
  # Pseudo-constants
  STATUS_NOERROR = 0
  STATUS_PARAMETER = 1
  STATUS_STATE = 2

  __slots__ = ['status','message']
  _slot_types = ['uint8','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       status,message

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ConfigureResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.status is None:
        self.status = 0
      if self.message is None:
        self.message = ''
    else:
      self.status = 0
      self.message = ''

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_B().pack(self.status))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8')
      else:
        self.message = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_get_struct_B().pack(self.status))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8')
      else:
        self.message = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class Configure(object):
  _type          = 'dyret_common/Configure'
  _md5sum = 'a1f60ce87d284338086c76bca2c0d0f8'
  _request_class  = ConfigureRequest
  _response_class = ConfigureResponse
