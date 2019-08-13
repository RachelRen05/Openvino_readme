# Introduction
The OpenVINO™ (Open visual inference and neural network optimization) toolkit provides a ROS-adaptered runtime framework of neural network which quickly deploys applications and solutions for vision inference. By leveraging Intel® OpenVINO™ toolkit and corresponding libraries, this runtime framework extends  workloads across Intel® hardware (including accelerators) and maximizes performance.
* Enables CNN-based deep learning inference at the edge
* Supports heterogeneous execution across computer vision accelerators—CPU, GPU, Intel® Movidius™ Neural Compute Stick, and FPGA—using a common API
* Speeds up time to market via a library of functions and preoptimized kernels
* Includes optimized calls for OpenCV and OpenVX*

# Prerequist
As a minimum list for prerequisites for the build/launching system:
- Intel architecture processor, e.g. 6th~8th generation Intel® Core™
- Ubuntu 18.04 with ROS2 core packages installed.
- USB Camera

**Note**: In order to show cases of OpenVINO's capabilities, when launching some of the sample programs, more prerequisites should be met:
- Intel® Neural Compute Stick 2
- Intel® Realsense™ camera D4xx series (e.g. D415, D435, D435i)

Please refer to [this page](https://github.com/LewisLiuPub/ros2_openvino_toolkit.doc/blob/master/doc/prerequisite.md) for the detailed info for requested deployment and target platform.

# Design Architecture and Logic Flow
Please refer to this [guide](https://github.com/RachelRen05/ros2_openvino_toolkit_updated/blob/master/doc/Design_Architecture_and_logic_flow.md) for details.

# Supported Features
## Input Resources
Currently, the package supports RGB frame data from several kinds of input resources:
- Standard USB Camera
- Realsense Camera
- Image Topic
- Image File
- Video File

See more from [the input resource description]().

## Inference Implementations
Inferences shown in below list are supported:
- Face Detection
- Emotion Recognition
- Age and Gender Recognition
- Head Pose Estimation
- Object Detection
- Vehicle and License Detection
- Object Segmentation
- Person Re-Identification
- Face Re-Identification

## Output Types
The inference results can be output in several types. One or more types can be enabled for any infernece pipeline:
- **Topic Publishing**: Specific topic(s) can be generated and published according to the given inference functionalities. See the [topic-inference matching table]().
- **Image View Window**: The original image and the inference results are rendered together and shown in a CV window.
- **RViz Showing**: The Rendered image (rendering inference results into the original image) was transformed into sensor_msgs::msg::Image topic, that can be shown in RViz application.

## Service
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
# Installation

**NOTE:** Intel releases 2 different series of OpenVINO Toolkit, we call them as [OpenSource Version](https://github.com/opencv/dldt/) and [Binary Version](https://software.intel.com/en-us/openvino-toolkit). You may choose any of them to install.

**NOTE:** If you are not sure which version you would use, it is recommended for you to choose Binary Version, which can simplify your environment setup.

### OpenSource Version
One-step installation scripts are provided for the dependencies' installation. Please see [the guide](https://github.com/intel/ros2_openvino_toolkit/blob/devel/doc/OPEN_SOURCE_CODE_README.md) for details.

### Binary Version
One-step installation scripts are provided for the dependencies' installation. Please see [the guide](https://github.com/RachelRen05/ros2_openvino_toolkit_updated/blob/master/doc/binary_version/BINARY_INSTALLATION.md) for details.

# Launching
### Setup Environment
Please refer to this [guide](https://github.com/RachelRen05/ros2_openvino_toolkit_updated/blob/master/doc/SET_ENVIRONMENT.md) for details.

**NOTE:** Configure *once* the Neural Compute Stick USB Driver by following between instructions, in case you have a NCS or NCS2 in hand. 
   ```bash
   cd ~/Downloads
   SUBSYSTEM=="usb", ATTRS{idProduct}=="2150", ATTRS{idVendor}=="03e7", GROUP="users", MODE="0666",   ENV{ID_MM_DEVICE_IGNORE}="1"
   SUBSYSTEM=="usb", ATTRS{idProduct}=="2485", ATTRS{idVendor}=="03e7", GROUP="users", MODE="0666", ENV{ID_MM_DEVICE_IGNORE}="1"
   SUBSYSTEM=="usb", ATTRS{idProduct}=="f63b", ATTRS{idVendor}=="03e7", GROUP="users", MODE="0666", ENV{ID_MM_DEVICE_IGNORE}="1"
   EOF
   sudo cp 97-usbboot.rules /etc/udev/rules.d/
   sudo udevadm control --reload-rules
   sudo udevadm trigger
   sudo ldconfig
   rm 97-usbboot.rules
   ```
## Launching Programs
Each inference listed in [section Inference Implementations]() is created default launching configurations( xxx.launch.py) in OpenVINO Sample package. You can follow the utility of ROS2 launch instruction to launch them. For example:
   ```bash
   ros2 launch dynamic_vino_sample pipeline_object.launch.py
   ```

The full list of xxx.launch.py is shown in below tabel:

|Launch File|Description|
|-----------------------|----|
|pipeline_object.launch.py|Launching file for **Object Detection**, by default mobilenet_ssd model and standard USB camera are used.|
|pipeline_people.launch.py|Launching file for **Face Detection**, also including **Age/Gender Recognition, HeadPose Estimation, and Emotion Recognition**.|
|pipeline_segmentation.launch.py|Launching file for **Object Segmentation**.| 
|pipeline_person_reid.launch.py|Launching file for **Person Re-Identification**.| 
|pipeline_face_reid.launch.py|Launching file for **Face Segmentation**, in which **Face Landmark Detection** is included.| 

# Get Started
Please refer to [this page]() for detailed steps for code/dependency download, build, and simple demo application launching.

# Tutorials
- [How to configure a inference pipeline?]()
- [How to create multiple pipelines in a process?]()
# TODO Features
* Support **result filtering** for inference process, so that the inference results can be filtered to different subsidiary inference. For example, given an image, firstly we do Object Detection on it, secondly we pass cars to vehicle brand recognition and pass license plate to license number recognition.
* Design **resource manager** to better use such resources as models, engines, and other external plugins.
* Develop GUI based **configuration and management tools** (and monitoring and diagnose tools), in order to provide easy entry for end users to simplify their operation. 

# More Information
* ROS2 OpenVINO discription writen in Chinese: https://mp.weixin.qq.com/s/BgG3RGauv5pmHzV_hkVAdw 

###### *Any security issue should be reported using process at https://01.org/security*

