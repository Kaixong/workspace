// Auto-generated. Do not edit!

// (in-package dataglovetest.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class dataglove_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LT = null;
      this.LP = null;
      this.LM = null;
      this.LR = null;
      this.LL = null;
      this.RT = null;
      this.RP = null;
      this.RM = null;
      this.RR = null;
      this.RL = null;
    }
    else {
      if (initObj.hasOwnProperty('LT')) {
        this.LT = initObj.LT
      }
      else {
        this.LT = 0.0;
      }
      if (initObj.hasOwnProperty('LP')) {
        this.LP = initObj.LP
      }
      else {
        this.LP = 0.0;
      }
      if (initObj.hasOwnProperty('LM')) {
        this.LM = initObj.LM
      }
      else {
        this.LM = 0.0;
      }
      if (initObj.hasOwnProperty('LR')) {
        this.LR = initObj.LR
      }
      else {
        this.LR = 0.0;
      }
      if (initObj.hasOwnProperty('LL')) {
        this.LL = initObj.LL
      }
      else {
        this.LL = 0.0;
      }
      if (initObj.hasOwnProperty('RT')) {
        this.RT = initObj.RT
      }
      else {
        this.RT = 0.0;
      }
      if (initObj.hasOwnProperty('RP')) {
        this.RP = initObj.RP
      }
      else {
        this.RP = 0.0;
      }
      if (initObj.hasOwnProperty('RM')) {
        this.RM = initObj.RM
      }
      else {
        this.RM = 0.0;
      }
      if (initObj.hasOwnProperty('RR')) {
        this.RR = initObj.RR
      }
      else {
        this.RR = 0.0;
      }
      if (initObj.hasOwnProperty('RL')) {
        this.RL = initObj.RL
      }
      else {
        this.RL = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dataglove_data
    // Serialize message field [LT]
    bufferOffset = _serializer.float64(obj.LT, buffer, bufferOffset);
    // Serialize message field [LP]
    bufferOffset = _serializer.float64(obj.LP, buffer, bufferOffset);
    // Serialize message field [LM]
    bufferOffset = _serializer.float64(obj.LM, buffer, bufferOffset);
    // Serialize message field [LR]
    bufferOffset = _serializer.float64(obj.LR, buffer, bufferOffset);
    // Serialize message field [LL]
    bufferOffset = _serializer.float64(obj.LL, buffer, bufferOffset);
    // Serialize message field [RT]
    bufferOffset = _serializer.float64(obj.RT, buffer, bufferOffset);
    // Serialize message field [RP]
    bufferOffset = _serializer.float64(obj.RP, buffer, bufferOffset);
    // Serialize message field [RM]
    bufferOffset = _serializer.float64(obj.RM, buffer, bufferOffset);
    // Serialize message field [RR]
    bufferOffset = _serializer.float64(obj.RR, buffer, bufferOffset);
    // Serialize message field [RL]
    bufferOffset = _serializer.float64(obj.RL, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dataglove_data
    let len;
    let data = new dataglove_data(null);
    // Deserialize message field [LT]
    data.LT = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LP]
    data.LP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LM]
    data.LM = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LR]
    data.LR = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LL]
    data.LL = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RT]
    data.RT = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RP]
    data.RP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RM]
    data.RM = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RR]
    data.RR = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RL]
    data.RL = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dataglovetest/dataglove_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31ba650ac7c0f1ef76e6e92486297e70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dataglove_data(null);
    if (msg.LT !== undefined) {
      resolved.LT = msg.LT;
    }
    else {
      resolved.LT = 0.0
    }

    if (msg.LP !== undefined) {
      resolved.LP = msg.LP;
    }
    else {
      resolved.LP = 0.0
    }

    if (msg.LM !== undefined) {
      resolved.LM = msg.LM;
    }
    else {
      resolved.LM = 0.0
    }

    if (msg.LR !== undefined) {
      resolved.LR = msg.LR;
    }
    else {
      resolved.LR = 0.0
    }

    if (msg.LL !== undefined) {
      resolved.LL = msg.LL;
    }
    else {
      resolved.LL = 0.0
    }

    if (msg.RT !== undefined) {
      resolved.RT = msg.RT;
    }
    else {
      resolved.RT = 0.0
    }

    if (msg.RP !== undefined) {
      resolved.RP = msg.RP;
    }
    else {
      resolved.RP = 0.0
    }

    if (msg.RM !== undefined) {
      resolved.RM = msg.RM;
    }
    else {
      resolved.RM = 0.0
    }

    if (msg.RR !== undefined) {
      resolved.RR = msg.RR;
    }
    else {
      resolved.RR = 0.0
    }

    if (msg.RL !== undefined) {
      resolved.RL = msg.RL;
    }
    else {
      resolved.RL = 0.0
    }

    return resolved;
    }
};

module.exports = dataglove_data;
