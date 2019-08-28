[TOC]

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
- Topic Publishing
- Image View Window
- RViz Showing
- Service (as a mechanism responding user's request about object detection results.)

See more from [output_types]() page.

# Installation
See [Installation Page]() for detailed installation instructions.

# Launching
See [Launching Page]() for detailed launching instructions.

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

