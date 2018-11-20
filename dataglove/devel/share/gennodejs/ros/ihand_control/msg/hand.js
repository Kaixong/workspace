// Auto-generated. Do not edit!

// (in-package ihand_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class hand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.thumb = null;
      this.index = null;
      this.middle = null;
      this.ring = null;
      this.baby = null;
      this.trapezium = null;
    }
    else {
      if (initObj.hasOwnProperty('thumb')) {
        this.thumb = initObj.thumb
      }
      else {
        this.thumb = 0.0;
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0.0;
      }
      if (initObj.hasOwnProperty('middle')) {
        this.middle = initObj.middle
      }
      else {
        this.middle = 0.0;
      }
      if (initObj.hasOwnProperty('ring')) {
        this.ring = initObj.ring
      }
      else {
        this.ring = 0.0;
      }
      if (initObj.hasOwnProperty('baby')) {
        this.baby = initObj.baby
      }
      else {
        this.baby = 0.0;
      }
      if (initObj.hasOwnProperty('trapezium')) {
        this.trapezium = initObj.trapezium
      }
      else {
        this.trapezium = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hand
    // Serialize message field [thumb]
    bufferOffset = _serializer.float32(obj.thumb, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.float32(obj.index, buffer, bufferOffset);
    // Serialize message field [middle]
    bufferOffset = _serializer.float32(obj.middle, buffer, bufferOffset);
    // Serialize message field [ring]
    bufferOffset = _serializer.float32(obj.ring, buffer, bufferOffset);
    // Serialize message field [baby]
    bufferOffset = _serializer.float32(obj.baby, buffer, bufferOffset);
    // Serialize message field [trapezium]
    bufferOffset = _serializer.float32(obj.trapezium, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hand
    let len;
    let data = new hand(null);
    // Deserialize message field [thumb]
    data.thumb = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [middle]
    data.middle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ring]
    data.ring = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [baby]
    data.baby = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trapezium]
    data.trapezium = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ihand_control/hand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f67db7bbc93485d67116d239f1e5343';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 thumb
    float32 index
    float32 middle
    float32 ring
    float32 baby
    float32 trapezium
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hand(null);
    if (msg.thumb !== undefined) {
      resolved.thumb = msg.thumb;
    }
    else {
      resolved.thumb = 0.0
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0.0
    }

    if (msg.middle !== undefined) {
      resolved.middle = msg.middle;
    }
    else {
      resolved.middle = 0.0
    }

    if (msg.ring !== undefined) {
      resolved.ring = msg.ring;
    }
    else {
      resolved.ring = 0.0
    }

    if (msg.baby !== undefined) {
      resolved.baby = msg.baby;
    }
    else {
      resolved.baby = 0.0
    }

    if (msg.trapezium !== undefined) {
      resolved.trapezium = msg.trapezium;
    }
    else {
      resolved.trapezium = 0.0
    }

    return resolved;
    }
};

module.exports = hand;
