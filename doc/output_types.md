# Output Types
The inference results can be output in several types. One or more types can be enabled for any infernece pipeline:
- **Topic Publishing**: Specific topic(s) can be generated and published according to the given inference functionalities. See the [topic-inference matching table]().
- **Image View Window**: The original image and the inference results are rendered together and shown in a CV window.
- **RViz Showing**: The Rendered image (rendering inference results into the original image) was transformed into sensor_msgs::msg::Image topic, that can be shown in RViz application.
## Topic-Inference Metric
TBD

# Service
Several ROS2 Services are created, expecting to be used in client/server mode, especially when synchronously getting inference results for a given image frame or when managing inference pipeline's lifecycle.
- **Face Detection or Object Detection for a given Image file**
   - Object Detection Service:
```/detect_object``` ([object_msgs::srv::DetectObject](https://github.com/intel/ros2_object_msgs/blob/master/srv/DetectObject.srv))
   - Face Detection Service:
```/detect_face``` ([object_msgs::srv::DetectObject](https://github.com/intel/ros2_object_msgs/blob/master/srv/DetectObject.srv))
   - Age & Gender Detection Service:
```/detect_age_gender``` ([people_msgs::srv::AgeGender](https://github.com/intel/   ros2_openvino_toolkit/blob/devel/people_msgs/srv/AgeGender.srv))
   - Headpose Detection Service:
```/detect_head_pose``` ([people_msgs::srv::HeadPose](https://github.com/intel/ros2_openvino_toolkit/blob/devel/people_msgs/srv/HeadPose.srv))
   - Emotion Detection Service:
```/detect_emotion``` ([people_msgs::srv::Emotion](https://github.com/intel/ros2_openvino_toolkit/blob/devel/people_msgs/srv/Emotion.srv))
- **Inference Pipeline Lifecycle Management**
   - Create new pipeline
   - Start/Stop/Pause a pipeline
   - Get pipeline list or status
