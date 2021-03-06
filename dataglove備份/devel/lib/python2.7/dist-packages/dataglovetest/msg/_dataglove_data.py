# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dataglovetest/dataglove_data.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class dataglove_data(genpy.Message):
  _md5sum = "31ba650ac7c0f1ef76e6e92486297e70"
  _type = "dataglovetest/dataglove_data"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
float64 LT
float64 LP
float64 LM
float64 LR
float64 LL
float64 RT
float64 RP
float64 RM
float64 RR
float64 RL
"""
  __slots__ = ['LT','LP','LM','LR','LL','RT','RP','RM','RR','RL']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       LT,LP,LM,LR,LL,RT,RP,RM,RR,RL

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(dataglove_data, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.LT is None:
        self.LT = 0.
      if self.LP is None:
        self.LP = 0.
      if self.LM is None:
        self.LM = 0.
      if self.LR is None:
        self.LR = 0.
      if self.LL is None:
        self.LL = 0.
      if self.RT is None:
        self.RT = 0.
      if self.RP is None:
        self.RP = 0.
      if self.RM is None:
        self.RM = 0.
      if self.RR is None:
        self.RR = 0.
      if self.RL is None:
        self.RL = 0.
    else:
      self.LT = 0.
      self.LP = 0.
      self.LM = 0.
      self.LR = 0.
      self.LL = 0.
      self.RT = 0.
      self.RP = 0.
      self.RM = 0.
      self.RR = 0.
      self.RL = 0.

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
      buff.write(_get_struct_10d().pack(_x.LT, _x.LP, _x.LM, _x.LR, _x.LL, _x.RT, _x.RP, _x.RM, _x.RR, _x.RL))
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
      end += 80
      (_x.LT, _x.LP, _x.LM, _x.LR, _x.LL, _x.RT, _x.RP, _x.RM, _x.RR, _x.RL,) = _get_struct_10d().unpack(str[start:end])
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
      buff.write(_get_struct_10d().pack(_x.LT, _x.LP, _x.LM, _x.LR, _x.LL, _x.RT, _x.RP, _x.RM, _x.RR, _x.RL))
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
      end += 80
      (_x.LT, _x.LP, _x.LM, _x.LR, _x.LL, _x.RT, _x.RP, _x.RM, _x.RR, _x.RL,) = _get_struct_10d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10d = None
def _get_struct_10d():
    global _struct_10d
    if _struct_10d is None:
        _struct_10d = struct.Struct("<10d")
    return _struct_10d
