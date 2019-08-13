# Full list of supported Input Resources
|Input Resource|Description|
|---|-------------------------------------------|
|StandardCamera|Any RGB camera with USB port supporting. Currently only the first USB camera if many are connected.|
|RealSenseCamera| Intel RealSense RGB-D Camera,directly calling RealSense Camera via librealsense plugin of openCV.|
|Image Topic| any ROS topic which is structured in image message.The topic to be inputted must be remapped to name ```/openvino_toolkit/image_raw```(type [sensor_msgs::msg::Image](https://github.com/ros2/common_interfaces/blob/master/sensor_msgs/msg/Image.msg))|
|Image File| Any image file which can be parsed by openCV, such as .png, .jpeg.|
|Video File| Any video file which can be parsed by openCV.|