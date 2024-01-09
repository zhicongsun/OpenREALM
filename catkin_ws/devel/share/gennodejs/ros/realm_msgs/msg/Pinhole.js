// Auto-generated. Do not edit!

// (in-package realm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Pinhole {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.width = null;
      this.height = null;
      this.cx = null;
      this.cy = null;
      this.fx = null;
      this.fy = null;
      this.k1 = null;
      this.k2 = null;
      this.p1 = null;
      this.p2 = null;
      this.k3 = null;
    }
    else {
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = new std_msgs.msg.UInt32();
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = new std_msgs.msg.UInt32();
      }
      if (initObj.hasOwnProperty('cx')) {
        this.cx = initObj.cx
      }
      else {
        this.cx = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('cy')) {
        this.cy = initObj.cy
      }
      else {
        this.cy = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('fx')) {
        this.fx = initObj.fx
      }
      else {
        this.fx = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('k1')) {
        this.k1 = initObj.k1
      }
      else {
        this.k1 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('k2')) {
        this.k2 = initObj.k2
      }
      else {
        this.k2 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('p2')) {
        this.p2 = initObj.p2
      }
      else {
        this.p2 = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('k3')) {
        this.k3 = initObj.k3
      }
      else {
        this.k3 = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pinhole
    // Serialize message field [width]
    bufferOffset = std_msgs.msg.UInt32.serialize(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = std_msgs.msg.UInt32.serialize(obj.height, buffer, bufferOffset);
    // Serialize message field [cx]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cx, buffer, bufferOffset);
    // Serialize message field [cy]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cy, buffer, bufferOffset);
    // Serialize message field [fx]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.fx, buffer, bufferOffset);
    // Serialize message field [fy]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.fy, buffer, bufferOffset);
    // Serialize message field [k1]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.k1, buffer, bufferOffset);
    // Serialize message field [k2]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.k2, buffer, bufferOffset);
    // Serialize message field [p1]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.p1, buffer, bufferOffset);
    // Serialize message field [p2]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.p2, buffer, bufferOffset);
    // Serialize message field [k3]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.k3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pinhole
    let len;
    let data = new Pinhole(null);
    // Deserialize message field [width]
    data.width = std_msgs.msg.UInt32.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = std_msgs.msg.UInt32.deserialize(buffer, bufferOffset);
    // Deserialize message field [cx]
    data.cx = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [cy]
    data.cy = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [fx]
    data.fx = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [fy]
    data.fy = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [k1]
    data.k1 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [k2]
    data.k2 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [p1]
    data.p1 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [p2]
    data.p2 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [k3]
    data.k3 = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realm_msgs/Pinhole';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89c97ad67d741eb4b47e5809398cd3a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #####################################################
    # A message containing general pinhole camera model #
    #####################################################
    
    # Image dimensions
    std_msgs/UInt32 width
    std_msgs/UInt32 height
    
    # Principal point
    std_msgs/Float64 cx
    std_msgs/Float64 cy
    
    # Focal length
    std_msgs/Float64 fx
    std_msgs/Float64 fy
    
    # Radial distortion parameters
    std_msgs/Float64 k1
    std_msgs/Float64 k2
    std_msgs/Float64 p1
    std_msgs/Float64 p2
    std_msgs/Float64 k3
    
    ================================================================================
    MSG: std_msgs/UInt32
    uint32 data
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pinhole(null);
    if (msg.width !== undefined) {
      resolved.width = std_msgs.msg.UInt32.Resolve(msg.width)
    }
    else {
      resolved.width = new std_msgs.msg.UInt32()
    }

    if (msg.height !== undefined) {
      resolved.height = std_msgs.msg.UInt32.Resolve(msg.height)
    }
    else {
      resolved.height = new std_msgs.msg.UInt32()
    }

    if (msg.cx !== undefined) {
      resolved.cx = std_msgs.msg.Float64.Resolve(msg.cx)
    }
    else {
      resolved.cx = new std_msgs.msg.Float64()
    }

    if (msg.cy !== undefined) {
      resolved.cy = std_msgs.msg.Float64.Resolve(msg.cy)
    }
    else {
      resolved.cy = new std_msgs.msg.Float64()
    }

    if (msg.fx !== undefined) {
      resolved.fx = std_msgs.msg.Float64.Resolve(msg.fx)
    }
    else {
      resolved.fx = new std_msgs.msg.Float64()
    }

    if (msg.fy !== undefined) {
      resolved.fy = std_msgs.msg.Float64.Resolve(msg.fy)
    }
    else {
      resolved.fy = new std_msgs.msg.Float64()
    }

    if (msg.k1 !== undefined) {
      resolved.k1 = std_msgs.msg.Float64.Resolve(msg.k1)
    }
    else {
      resolved.k1 = new std_msgs.msg.Float64()
    }

    if (msg.k2 !== undefined) {
      resolved.k2 = std_msgs.msg.Float64.Resolve(msg.k2)
    }
    else {
      resolved.k2 = new std_msgs.msg.Float64()
    }

    if (msg.p1 !== undefined) {
      resolved.p1 = std_msgs.msg.Float64.Resolve(msg.p1)
    }
    else {
      resolved.p1 = new std_msgs.msg.Float64()
    }

    if (msg.p2 !== undefined) {
      resolved.p2 = std_msgs.msg.Float64.Resolve(msg.p2)
    }
    else {
      resolved.p2 = new std_msgs.msg.Float64()
    }

    if (msg.k3 !== undefined) {
      resolved.k3 = std_msgs.msg.Float64.Resolve(msg.k3)
    }
    else {
      resolved.k3 = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = Pinhole;
