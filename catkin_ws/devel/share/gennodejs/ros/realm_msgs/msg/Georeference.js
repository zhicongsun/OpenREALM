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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Georeference {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform = null;
      this.scale = null;
    }
    else {
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('scale')) {
        this.scale = initObj.scale
      }
      else {
        this.scale = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Georeference
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [scale]
    // Serialize the length for message field [scale]
    bufferOffset = _serializer.uint32(obj.scale.length, buffer, bufferOffset);
    obj.scale.forEach((val) => {
      bufferOffset = std_msgs.msg.Float64.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Georeference
    let len;
    let data = new Georeference(null);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [scale]
    // Deserialize array length for message field [scale]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.scale = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.scale[i] = std_msgs.msg.Float64.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.scale.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realm_msgs/Georeference';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '916e9c01fe447c6361e802269207d6a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #####################################################
    # A message containing georeference informations    #
    #####################################################
    
    # Following message is basically a similarity transformation
    
    geometry_msgs/Transform transform
    std_msgs/Float64[] scale
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    const resolved = new Georeference(null);
    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    if (msg.scale !== undefined) {
      resolved.scale = new Array(msg.scale.length);
      for (let i = 0; i < resolved.scale.length; ++i) {
        resolved.scale[i] = std_msgs.msg.Float64.Resolve(msg.scale[i]);
      }
    }
    else {
      resolved.scale = []
    }

    return resolved;
    }
};

module.exports = Georeference;
