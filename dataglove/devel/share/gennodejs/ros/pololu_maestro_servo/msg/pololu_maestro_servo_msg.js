// Auto-generated. Do not edit!

// (in-package pololu_maestro_servo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class pololu_maestro_servo_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo_data = null;
    }
    else {
      if (initObj.hasOwnProperty('servo_data')) {
        this.servo_data = initObj.servo_data
      }
      else {
        this.servo_data = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pololu_maestro_servo_msg
    // Check that the constant length array field [servo_data] has the right length
    if (obj.servo_data.length !== 6) {
      throw new Error('Unable to serialize array field servo_data - length must be 6')
    }
    // Serialize message field [servo_data]
    bufferOffset = _arraySerializer.int32(obj.servo_data, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pololu_maestro_servo_msg
    let len;
    let data = new pololu_maestro_servo_msg(null);
    // Deserialize message field [servo_data]
    data.servo_data = _arrayDeserializer.int32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pololu_maestro_servo/pololu_maestro_servo_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c444c8787a637f584c57a88a50b5fa1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[6] servo_data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pololu_maestro_servo_msg(null);
    if (msg.servo_data !== undefined) {
      resolved.servo_data = msg.servo_data;
    }
    else {
      resolved.servo_data = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = pololu_maestro_servo_msg;
