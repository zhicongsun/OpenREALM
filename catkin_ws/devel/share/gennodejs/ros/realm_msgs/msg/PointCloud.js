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
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class PointCloud {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.point_ids = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('point_ids')) {
        this.point_ids = initObj.point_ids
      }
      else {
        this.point_ids = [];
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointCloud
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [point_ids]
    bufferOffset = _arraySerializer.uint32(obj.point_ids, buffer, bufferOffset, null);
    // Serialize message field [points]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.points, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointCloud
    let len;
    let data = new PointCloud(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_ids]
    data.point_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [points]
    data.points = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.point_ids.length;
    length += sensor_msgs.msg.Image.getMessageSize(object.points);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realm_msgs/PointCloud';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6084ccb52837e7a14d62eb0d8247527b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ######################################################
    # A message containing basic REALM sparse cloud data #
    ######################################################
    
    # (required) Header containing message meta data
    std_msgs/Header header
    
    # (required) Vector of unique point ids
    uint32[] point_ids
    
    # (required) Data of the sparse cloud structured as cv::Mat with row(i) = x,y,z
    sensor_msgs/Image points
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
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointCloud(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.point_ids !== undefined) {
      resolved.point_ids = msg.point_ids;
    }
    else {
      resolved.point_ids = []
    }

    if (msg.points !== undefined) {
      resolved.points = sensor_msgs.msg.Image.Resolve(msg.points)
    }
    else {
      resolved.points = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = PointCloud;
