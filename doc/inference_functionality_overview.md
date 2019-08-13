# Infernece Feature List
Currently, the inference feature list is supported:

|Inference|Description|Outputs Topic|
|---|---|---|
|Face Detection|Object Detection task applied to face recognition using a sequence of neural networks.|```/ros2_openvino_toolkit/face_detection```([object_msgs:msg:ObjectsInBoxes](https://github.com/intel/ros2_object_msgs/blob/master/msg/ObjectsInBoxes.msg))|
|Emotion Recognition| Emotion recognition based on detected face image.|```/ros2_openvino_toolkit/emotions_recognition```([people_msgs:msg:EmotionsStamped](https://github.com/intel/ros2_openvino_toolkit/blob/master/people_msgs/msg/EmotionsStamped.msg))|
|Age & Gender Recognition| Age and gener recognition based on detected face image.|```/ros2_openvino_toolkit/age_genders_Recognition```([people_msgs:msg:AgeGenderStamped](https://github.com/intel/ros2_openvino_toolkit/blob/master/people_msgs/msg/AgeGenderStamped.msg))|
|Head Pose Estimation| Head pose estimation based on detected face image.|```/ros2_openvino_toolkit/headposes_estimation```([people_msgs:msg:HeadPoseStamped](https://github.com/intel/ros2_openvino_toolkit/blob/master/people_msgs/msg/HeadPoseStamped.msg))|
|Object Detection| object detection based on SSD-based trained models.|```/ros2_openvino_toolkit/detected_objects```([object_msgs::msg::ObjectsInBoxes](https://github.com/intel/ros2_object_msgs/blob/master/msg/ObjectsInBoxes.msg))|
|Vehicle Detection| Vehicle detection based on Intel models.|```/ros2_openvino_toolkit/detected_vehicles_attribs```([people_msgs::msg::VehicleAttribsStamped](https://github.com/intel/ros2_openvino_toolkit/blob/devel/people_msgs/msg/VehicleAttribsStamped.msg))|
|License Detection| License detection based on Intel models.|```/ros2_openvino_toolkit/detected_license_plates```([people_msgs::msg::LicensePlateStamped](https://github.com/intel/ros2_openvino_toolkit/blob/devel/people_msgs/msg/LicensePlateStamped.msg))|
|Object Segmentation| object detection and segmentation.|```/ros2_openvino_toolkit/segmented_obejcts```([people_msgs::msg::ObjectsInMasks](https://github.com/intel/ros2_openvino_toolkit/blob/devel/people_msgs/msg/ObjectsInMasks.msg))|
|Person Reidentification| Person Reidentification based on object detection.|```/ros2_openvino_toolkit/reidentified_persons```([people_msgs::msg::ReidentificationStamped](https://github.com/intel/ros2_openvino_toolkit/blob/devel/people_msgs/msg/ReidentificationStamped.msg))|
