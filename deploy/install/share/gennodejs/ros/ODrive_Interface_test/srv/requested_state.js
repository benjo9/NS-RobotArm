// Auto-generated. Do not edit!

// (in-package ODrive_Interface_test.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class requested_stateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.axis = null;
      this.requested_state = null;
    }
    else {
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = 0;
      }
      if (initObj.hasOwnProperty('requested_state')) {
        this.requested_state = initObj.requested_state
      }
      else {
        this.requested_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type requested_stateRequest
    // Serialize message field [axis]
    bufferOffset = _serializer.int16(obj.axis, buffer, bufferOffset);
    // Serialize message field [requested_state]
    bufferOffset = _serializer.int16(obj.requested_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type requested_stateRequest
    let len;
    let data = new requested_stateRequest(null);
    // Deserialize message field [axis]
    data.axis = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [requested_state]
    data.requested_state = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ODrive_Interface_test/requested_stateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a10318c9ebc765320932e18d76aa3b6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int16 axis
    int16 requested_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new requested_stateRequest(null);
    if (msg.axis !== undefined) {
      resolved.axis = msg.axis;
    }
    else {
      resolved.axis = 0
    }

    if (msg.requested_state !== undefined) {
      resolved.requested_state = msg.requested_state;
    }
    else {
      resolved.requested_state = 0
    }

    return resolved;
    }
};

class requested_stateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type requested_stateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type requested_stateResponse
    let len;
    let data = new requested_stateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ODrive_Interface_test/requested_stateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new requested_stateResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: requested_stateRequest,
  Response: requested_stateResponse,
  md5sum() { return 'b06410045851cc21cdfe462a30e6cdb3'; },
  datatype() { return 'ODrive_Interface_test/requested_state'; }
};
