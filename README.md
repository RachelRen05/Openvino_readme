# ros2_openvino_toolkit

## Introduction
The OpenVINO™ (Open visual inference and neural network optimization) toolkit provides a ROS-adaptered runtime framework of neural network which quickly deploys applications and solutions for vision inference. By leveraging Intel® OpenVINO™ toolkit and corresponding libraries, this runtime framework extends  workloads across Intel® hardware (including accelerators) and maximizes performance.
* Enables CNN-based deep learning inference at the edge
* Supports heterogeneous execution across computer vision accelerators—CPU, GPU, Intel® Movidius™ Neural Compute Stick, and FPGA—using a common API
* Speeds up time to market via a library of functions and preoptimized kernels
* Includes optimized calls for OpenCV and OpenVX*

## Tables of contents
* [Prerequist](https://github.com/RachelRen05/Openvino_readme/blob/master/doc/tables_of_contents/prerequisite.md)
* [Design Architecture and Logic Flow](https://github.com/RachelRen05/Openvino_readme/blob/master/doc/tables_of_contents/Design_Architecture_and_logic_flow.md)
* [Supported Features](https://github.com/RachelRen05/Openvino_readme/blob/master/doc/tables_of_contents/supported_features/Supported_features.md)
* Tutorials
  - [How to configure a inference pipeline?](https://github.com/RachelRen05/Openvino_readme/blob/master/doc/tables_of_contents/tutorials/configuration_file_customization.md)
  - [How to create multiple pipelines in a process?]()
  - [Quick Getting Started](https://github.com/RachelRen05/Openvino_readme/blob/master/doc/tables_of_contents/tutorials/Getting_Started.md)

## Installation
See [Installation Page](https://github.com/RachelRen05/Openvino_readme/blob/master/doc/installation/installation.md) for detailed installation instructions.

## Launching
See [Launching Page](https://github.com/RachelRen05/Openvino_readme/blob/master/doc/launching/launch.md) for detailed launching instructions.


# TODO Features
* Support **result filtering** for inference process, so that the inference results can be filtered to different subsidiary inference. For example, given an image, firstly we do Object Detection on it, secondly we pass cars to vehicle brand recognition and pass license plate to license number recognition.
* Design **resource manager** to better use such resources as models, engines, and other external plugins.
* Develop GUI based **configuration and management tools** (and monitoring and diagnose tools), in order to provide easy entry for end users to simplify their operation. 

# More Information
* ROS2 OpenVINO discription writen in Chinese: https://mp.weixin.qq.com/s/BgG3RGauv5pmHzV_hkVAdw 

###### *Any security issue should be reported using process at https://01.org/security*

