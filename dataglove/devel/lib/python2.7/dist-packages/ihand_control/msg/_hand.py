# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ihand_control/hand.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class hand(genpy.Message):
  _md5sum = "3f67db7bbc93485d67116d239f1e5343"
  _type = "ihand_control/hand"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 thumb
float32 index
float32 middle
float32 ring
float32 baby
float32 trapezium"""
  __slots__ = ['thumb','index','middle','ring','baby','trapezium']
  _slot_types = ['float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       thumb,index,middle,ring,baby,trapezium

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(hand, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.thumb is None:
        self.thumb = 0.
      if self.index is None:
        self.index = 0.
      if self.middle is None:
        self.middle = 0.
      if self.ring is None:
        self.ring = 0.
      if self.baby is None:
        self.baby = 0.
      if self.trapezium is None:
        self.trapezium = 0.
    else:
      self.thumb = 0.
      self.index = 0.
      self.middle = 0.
      self.ring = 0.
      self.baby = 0.
      self.trapezium = 0.

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
      buff.write(_get_struct_6f().pack(_x.thumb, _x.index, _x.middle, _x.ring, _x.baby, _x.trapezium))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.thumb, _x.index, _x.middle, _x.ring, _x.baby, _x.trapezium,) = _get_struct_6f().unpack(str[start:end])
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
      buff.write(_get_struct_6f().pack(_x.thumb, _x.index, _x.middle, _x.ring, _x.baby, _x.trapezium))
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
      _x = self
      start = end
      end += 24
      (_x.thumb, _x.index, _x.middle, _x.ring, _x.baby, _x.trapezium,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f
