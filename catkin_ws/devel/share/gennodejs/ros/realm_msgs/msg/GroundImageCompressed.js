// Auto-generated. Do not edit!

// (in-package realm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class GroundImageCompressed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imagedata = null;
      this.gpsdata = null;
      this.scale = null;
    }
    else {
      if (initObj.hasOwnProperty('imagedata')) {
        this.imagedata = initObj.imagedata
      }
      else {
        this.imagedata = new sensor_msgs.msg.CompressedImage();
      }
      if (initObj.hasOwnProperty('gpsdata')) {
        this.gpsdata = initObj.gpsdata
      }
      else {
        this.gpsdata = new sensor_msgs.msg.NavSatFix();
      }
      if (initObj.hasOwnProperty('scale')) {
        this.scale = initObj.scale
      }
      else {
        this.scale = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GroundImageCompressed
    // Serialize message field [imagedata]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.imagedata, buffer, bufferOffset);
    // Serialize message field [gpsdata]
    bufferOffset = sensor_msgs.msg.NavSatFix.serialize(obj.gpsdata, buffer, bufferOffset);
    // Serialize message field [scale]
    bufferOffset = _serializer.float64(obj.scale, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GroundImageCompressed
    let len;
    let data = new GroundImageCompressed(null);
    // Deserialize message field [imagedata]
    data.imagedata = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    // Deserialize message field [gpsdata]
    data.gpsdata = sensor_msgs.msg.NavSatFix.deserialize(buffer, bufferOffset);
    // Deserialize message field [scale]
    data.scale = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.imagedata);
    length += sensor_msgs.msg.NavSatFix.getMessageSize(object.gpsdata);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realm_msgs/GroundImageCompressed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c6d3d69899b6565e069bc83ccb3ad99';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A message to handle georeferenced images projected to a ground plane
    
    # Projected image at ground level in ENU coordinate frame
    sensor_msgs/CompressedImage imagedata
    
    # Global position of the image to be displayed. Upper left corner
    sensor_msgs/NavSatFix gpsdata
    
    # Scale of warped image with [m / pixels]
    float64 scale
    
    
    ================================================================================
    MSG: sensor_msgs/CompressedImage
    # This message contains a compressed image
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
    
    string format        # Specifies the format of the data
                         #   Acceptable values:
                         #     jpeg, png
    uint8[] data         # Compressed image buffer
    
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
    MSG: sensor_msgs/NavSatFix
    # Navigation Satellite fix for any Global Navigation Satellite System
    #
    # Specified using the WGS 84 reference ellipsoid
    
    # header.stamp specifies the ROS time for this measurement (the
    #        corresponding satellite time may be reported using the
    #        sensor_msgs/TimeReference message).
    #
    # header.frame_id is the frame of reference reported by the satellite
    #        receiver, usually the location of the antenna.  This is a
    #        Euclidean frame relative to the vehicle, not a reference
    #        ellipsoid.
    Header header
    
    # satellite fix status information
    NavSatStatus status
    
    # Latitude [degrees]. Positive is north of equator; negative is south.
    float64 latitude
    
    # Longitude [degrees]. Positive is east of prime meridian; negative is west.
    float64 longitude
    
    # Altitude [m]. Positive is above the WGS 84 ellipsoid
    # (quiet NaN if no altitude is available).
    float64 altitude
    
    # Position covariance [m^2] defined relative to a tangential plane
    # through the reported position. The components are East, North, and
    # Up (ENU), in row-major order.
    #
    # Beware: this coordinate system exhibits singularities at the poles.
    
    float64[9] position_covariance
    
    # If the covariance of the fix is known, fill it in completely. If the
    # GPS receiver provides the variance of each measurement, put them
    # along the diagonal. If only Dilution of Precision is available,
    # estimate an approximate covariance from that.
    
    uint8 COVARIANCE_TYPE_UNKNOWN = 0
    uint8 COVARIANCE_TYPE_APPROXIMATED = 1
    uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
    uint8 COVARIANCE_TYPE_KNOWN = 3
    
    uint8 position_covariance_type
    
    ================================================================================
    MSG: sensor_msgs/NavSatStatus
    # Navigation Satellite fix status for any Global Navigation Satellite System
    
    # Whether to output an augmented fix is determined by both the fix
    # type and the last time differential corrections were received.  A
    # fix is valid when status >= STATUS_FIX.
    
    int8 STATUS_NO_FIX =  -1        # unable to fix position
    int8 STATUS_FIX =      0        # unaugmented fix
    int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
    int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation
    
    int8 status
    
    # Bits defining which Global Navigation Satellite System signals were
    # used by the receiver.
    
    uint16 SERVICE_GPS =     1
    uint16 SERVICE_GLONASS = 2
    uint16 SERVICE_COMPASS = 4      # includes BeiDou.
    uint16 SERVICE_GALILEO = 8
    
    uint16 service
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GroundImageCompressed(null);
    if (msg.imagedata !== undefined) {
      resolved.imagedata = sensor_msgs.msg.CompressedImage.Resolve(msg.imagedata)
    }
    else {
      resolved.imagedata = new sensor_msgs.msg.CompressedImage()
    }

    if (msg.gpsdata !== undefined) {
      resolved.gpsdata = sensor_msgs.msg.NavSatFix.Resolve(msg.gpsdata)
    }
    else {
      resolved.gpsdata = new sensor_msgs.msg.NavSatFix()
    }

    if (msg.scale !== undefined) {
      resolved.scale = msg.scale;
    }
    else {
      resolved.scale = 0.0
    }

    return resolved;
    }
};

module.exports = GroundImageCompressed;
