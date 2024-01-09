// Auto-generated. Do not edit!

// (in-package realm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pinhole = require('./Pinhole.js');
let PointCloud = require('./PointCloud.js');
let Depthmap = require('./Depthmap.js');
let CvGridMap = require('./CvGridMap.js');
let Georeference = require('./Georeference.js');
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Frame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.camera_id = null;
      this.stage_id = null;
      this.timestamp = null;
      this.imagedata = null;
      this.camera_model = null;
      this.orientation = null;
      this.gpsdata = null;
      this.sparse_cloud = null;
      this.depthmap = null;
      this.surface_model = null;
      this.orthophoto = null;
      this.heading = null;
      this.visual_pose = null;
      this.georeference = null;
      this.do_reset = null;
      this.has_accurate_pose = null;
      this.is_keyframe = null;
      this.is_georeferenced = null;
      this.is_surface_elevated = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('camera_id')) {
        this.camera_id = initObj.camera_id
      }
      else {
        this.camera_id = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('stage_id')) {
        this.stage_id = initObj.stage_id
      }
      else {
        this.stage_id = new std_msgs.msg.UInt32();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = new std_msgs.msg.UInt64();
      }
      if (initObj.hasOwnProperty('imagedata')) {
        this.imagedata = initObj.imagedata
      }
      else {
        this.imagedata = new sensor_msgs.msg.CompressedImage();
      }
      if (initObj.hasOwnProperty('camera_model')) {
        this.camera_model = initObj.camera_model
      }
      else {
        this.camera_model = new Pinhole();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('gpsdata')) {
        this.gpsdata = initObj.gpsdata
      }
      else {
        this.gpsdata = new sensor_msgs.msg.NavSatFix();
      }
      if (initObj.hasOwnProperty('sparse_cloud')) {
        this.sparse_cloud = initObj.sparse_cloud
      }
      else {
        this.sparse_cloud = new PointCloud();
      }
      if (initObj.hasOwnProperty('depthmap')) {
        this.depthmap = initObj.depthmap
      }
      else {
        this.depthmap = new Depthmap();
      }
      if (initObj.hasOwnProperty('surface_model')) {
        this.surface_model = initObj.surface_model
      }
      else {
        this.surface_model = new CvGridMap();
      }
      if (initObj.hasOwnProperty('orthophoto')) {
        this.orthophoto = initObj.orthophoto
      }
      else {
        this.orthophoto = new CvGridMap();
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('visual_pose')) {
        this.visual_pose = initObj.visual_pose
      }
      else {
        this.visual_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('georeference')) {
        this.georeference = initObj.georeference
      }
      else {
        this.georeference = new Georeference();
      }
      if (initObj.hasOwnProperty('do_reset')) {
        this.do_reset = initObj.do_reset
      }
      else {
        this.do_reset = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('has_accurate_pose')) {
        this.has_accurate_pose = initObj.has_accurate_pose
      }
      else {
        this.has_accurate_pose = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('is_keyframe')) {
        this.is_keyframe = initObj.is_keyframe
      }
      else {
        this.is_keyframe = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('is_georeferenced')) {
        this.is_georeferenced = initObj.is_georeferenced
      }
      else {
        this.is_georeferenced = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('is_surface_elevated')) {
        this.is_surface_elevated = initObj.is_surface_elevated
      }
      else {
        this.is_surface_elevated = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frame
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [camera_id]
    bufferOffset = std_msgs.msg.String.serialize(obj.camera_id, buffer, bufferOffset);
    // Serialize message field [stage_id]
    bufferOffset = std_msgs.msg.UInt32.serialize(obj.stage_id, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = std_msgs.msg.UInt64.serialize(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [imagedata]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.imagedata, buffer, bufferOffset);
    // Serialize message field [camera_model]
    bufferOffset = Pinhole.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [gpsdata]
    bufferOffset = sensor_msgs.msg.NavSatFix.serialize(obj.gpsdata, buffer, bufferOffset);
    // Serialize message field [sparse_cloud]
    bufferOffset = PointCloud.serialize(obj.sparse_cloud, buffer, bufferOffset);
    // Serialize message field [depthmap]
    bufferOffset = Depthmap.serialize(obj.depthmap, buffer, bufferOffset);
    // Serialize message field [surface_model]
    bufferOffset = CvGridMap.serialize(obj.surface_model, buffer, bufferOffset);
    // Serialize message field [orthophoto]
    bufferOffset = CvGridMap.serialize(obj.orthophoto, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.heading, buffer, bufferOffset);
    // Serialize message field [visual_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.visual_pose, buffer, bufferOffset);
    // Serialize message field [georeference]
    bufferOffset = Georeference.serialize(obj.georeference, buffer, bufferOffset);
    // Serialize message field [do_reset]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.do_reset, buffer, bufferOffset);
    // Serialize message field [has_accurate_pose]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.has_accurate_pose, buffer, bufferOffset);
    // Serialize message field [is_keyframe]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.is_keyframe, buffer, bufferOffset);
    // Serialize message field [is_georeferenced]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.is_georeferenced, buffer, bufferOffset);
    // Serialize message field [is_surface_elevated]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.is_surface_elevated, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frame
    let len;
    let data = new Frame(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_id]
    data.camera_id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [stage_id]
    data.stage_id = std_msgs.msg.UInt32.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = std_msgs.msg.UInt64.deserialize(buffer, bufferOffset);
    // Deserialize message field [imagedata]
    data.imagedata = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_model]
    data.camera_model = Pinhole.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [gpsdata]
    data.gpsdata = sensor_msgs.msg.NavSatFix.deserialize(buffer, bufferOffset);
    // Deserialize message field [sparse_cloud]
    data.sparse_cloud = PointCloud.deserialize(buffer, bufferOffset);
    // Deserialize message field [depthmap]
    data.depthmap = Depthmap.deserialize(buffer, bufferOffset);
    // Deserialize message field [surface_model]
    data.surface_model = CvGridMap.deserialize(buffer, bufferOffset);
    // Deserialize message field [orthophoto]
    data.orthophoto = CvGridMap.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [visual_pose]
    data.visual_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [georeference]
    data.georeference = Georeference.deserialize(buffer, bufferOffset);
    // Deserialize message field [do_reset]
    data.do_reset = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [has_accurate_pose]
    data.has_accurate_pose = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_keyframe]
    data.is_keyframe = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_georeferenced]
    data.is_georeferenced = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_surface_elevated]
    data.is_surface_elevated = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.camera_id);
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.imagedata);
    length += sensor_msgs.msg.NavSatFix.getMessageSize(object.gpsdata);
    length += PointCloud.getMessageSize(object.sparse_cloud);
    length += Depthmap.getMessageSize(object.depthmap);
    length += CvGridMap.getMessageSize(object.surface_model);
    length += CvGridMap.getMessageSize(object.orthophoto);
    length += Georeference.getMessageSize(object.georeference);
    return length + 189;
  }

  static datatype() {
    // Returns string type for a message object
    return 'realm_msgs/Frame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c5634361f210a95be3b4183d672f7a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #######################################################
    # A message containing basic REALM frame informations #
    #######################################################
    
    ##################### Sensor data #####################
    # (required) Header containing message meta data
    std_msgs/Header header
    
    # (required) Unique name/id of the acquiring camera
    std_msgs/String camera_id
    
    # (required) Frame id which is constant over the whole stage processing. Should only be set once
    std_msgs/UInt32 stage_id
    
    # (required) Timestamp of the acquisition. Is not the same as ros message timestamp!
    std_msgs/UInt64 timestamp
    
    # (required) Imagedata containing the compressed camera data
    sensor_msgs/CompressedImage imagedata
    
    # (required) Camera_model containing pinhole parameters of capturing cam
    realm_msgs/Pinhole camera_model
    
    # (required) Camera orientation as quaternion
    geometry_msgs/Quaternion orientation
    
    # (required) Gnss data containing geodetic informations of the image
    sensor_msgs/NavSatFix gpsdata
    
    # (optional) Point cloud of the observed surface
    realm_msgs/PointCloud sparse_cloud
    
    # (optional) Depthmap of the observed scene
    realm_msgs/Depthmap depthmap
    
    # (optional) Surface model as grid map of the frame projection
    realm_msgs/CvGridMap surface_model
    
    # (optional) Orthophoto of the frame
    realm_msgs/CvGridMap orthophoto
    
    # (optional) Heading in Degree, required if mapping on GNSS only
    std_msgs/Float32 heading
    
    # (optional) Visual pose of the camera in local coordinate frame, required e.g. for georeference updates
    geometry_msgs/Pose visual_pose
    
    # (optional) Transformation from the visual to the geographic world
    realm_msgs/Georeference georeference
    
    ######################## Flags ########################
    # Reset flag: set true, if following stage should be resetted
    std_msgs/Bool do_reset
    
    # Accurate pose flag: set true, if pose is suited for dense reconstruction
    std_msgs/Bool has_accurate_pose
    
    # Is key frame flag: set true, if frame was marked as keyframe
    std_msgs/Bool is_keyframe
    
    # Is georeferenced flag: set true, if frame was successfully georeferenced
    std_msgs/Bool is_georeferenced
    
    # Flag to check if surface was computed with 2.5D elevation or not
    std_msgs/Bool is_surface_elevated
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
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/UInt32
    uint32 data
    ================================================================================
    MSG: std_msgs/UInt64
    uint64 data
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
    MSG: realm_msgs/Pinhole
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
    MSG: std_msgs/Float64
    float64 data
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    
    ================================================================================
    MSG: realm_msgs/PointCloud
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
    
    ================================================================================
    MSG: realm_msgs/Depthmap
    ##################################################
    # A message containing basic REALM depthmap data #
    ##################################################
    
    # (required) Header containing message meta data
    std_msgs/Header header
    
    # (required) Camera_model containing pinhole parameters of capturing cam
    realm_msgs/Pinhole camera_model
    
    # (required) Pose during acquisition
    geometry_msgs/Pose pose
    
    # (required) Depth information
    sensor_msgs/Image data
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: realm_msgs/CvGridMap
    # Header for time and frame
    Header header
    
    # CvGridMap uni resolution in x-/y-dir
    float64 resolution
    
    # CvGridMap position of roi
    geometry_msgs/Point pos
    
    # CvGridMap length of roi in x
    float64 length_x
    
    # CvGridMap length of roi in y
    float64 length_y
    
    # CvGridMap layer names
    string[] layers
    
    # CvGridMap layer data
    sensor_msgs/Image[] data
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    ================================================================================
    MSG: realm_msgs/Georeference
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
    MSG: std_msgs/Bool
    bool data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Frame(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.camera_id !== undefined) {
      resolved.camera_id = std_msgs.msg.String.Resolve(msg.camera_id)
    }
    else {
      resolved.camera_id = new std_msgs.msg.String()
    }

    if (msg.stage_id !== undefined) {
      resolved.stage_id = std_msgs.msg.UInt32.Resolve(msg.stage_id)
    }
    else {
      resolved.stage_id = new std_msgs.msg.UInt32()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = std_msgs.msg.UInt64.Resolve(msg.timestamp)
    }
    else {
      resolved.timestamp = new std_msgs.msg.UInt64()
    }

    if (msg.imagedata !== undefined) {
      resolved.imagedata = sensor_msgs.msg.CompressedImage.Resolve(msg.imagedata)
    }
    else {
      resolved.imagedata = new sensor_msgs.msg.CompressedImage()
    }

    if (msg.camera_model !== undefined) {
      resolved.camera_model = Pinhole.Resolve(msg.camera_model)
    }
    else {
      resolved.camera_model = new Pinhole()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.gpsdata !== undefined) {
      resolved.gpsdata = sensor_msgs.msg.NavSatFix.Resolve(msg.gpsdata)
    }
    else {
      resolved.gpsdata = new sensor_msgs.msg.NavSatFix()
    }

    if (msg.sparse_cloud !== undefined) {
      resolved.sparse_cloud = PointCloud.Resolve(msg.sparse_cloud)
    }
    else {
      resolved.sparse_cloud = new PointCloud()
    }

    if (msg.depthmap !== undefined) {
      resolved.depthmap = Depthmap.Resolve(msg.depthmap)
    }
    else {
      resolved.depthmap = new Depthmap()
    }

    if (msg.surface_model !== undefined) {
      resolved.surface_model = CvGridMap.Resolve(msg.surface_model)
    }
    else {
      resolved.surface_model = new CvGridMap()
    }

    if (msg.orthophoto !== undefined) {
      resolved.orthophoto = CvGridMap.Resolve(msg.orthophoto)
    }
    else {
      resolved.orthophoto = new CvGridMap()
    }

    if (msg.heading !== undefined) {
      resolved.heading = std_msgs.msg.Float32.Resolve(msg.heading)
    }
    else {
      resolved.heading = new std_msgs.msg.Float32()
    }

    if (msg.visual_pose !== undefined) {
      resolved.visual_pose = geometry_msgs.msg.Pose.Resolve(msg.visual_pose)
    }
    else {
      resolved.visual_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.georeference !== undefined) {
      resolved.georeference = Georeference.Resolve(msg.georeference)
    }
    else {
      resolved.georeference = new Georeference()
    }

    if (msg.do_reset !== undefined) {
      resolved.do_reset = std_msgs.msg.Bool.Resolve(msg.do_reset)
    }
    else {
      resolved.do_reset = new std_msgs.msg.Bool()
    }

    if (msg.has_accurate_pose !== undefined) {
      resolved.has_accurate_pose = std_msgs.msg.Bool.Resolve(msg.has_accurate_pose)
    }
    else {
      resolved.has_accurate_pose = new std_msgs.msg.Bool()
    }

    if (msg.is_keyframe !== undefined) {
      resolved.is_keyframe = std_msgs.msg.Bool.Resolve(msg.is_keyframe)
    }
    else {
      resolved.is_keyframe = new std_msgs.msg.Bool()
    }

    if (msg.is_georeferenced !== undefined) {
      resolved.is_georeferenced = std_msgs.msg.Bool.Resolve(msg.is_georeferenced)
    }
    else {
      resolved.is_georeferenced = new std_msgs.msg.Bool()
    }

    if (msg.is_surface_elevated !== undefined) {
      resolved.is_surface_elevated = std_msgs.msg.Bool.Resolve(msg.is_surface_elevated)
    }
    else {
      resolved.is_surface_elevated = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = Frame;
