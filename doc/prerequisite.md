# Development and Target Platform

The development and target platforms have the same requirements, but you can select different components during the installation, based on your intended use.

## Hardware

- 6th-8th Generation Intel® Core™
- Intel® Xeon® v5 family
- Intel® Xeon® v6 family
- Intel® Pentium® processor N4200/5, N3350/5, N3450/5 with Intel® HD Graphics
- Intel® Movidius™ Neural Compute Stick
- Intel® Neural Compute Stick 2
- Intel® Vision Accelerator Design with Intel® Movidius™ VPU

## Processor Notes:

- Processor graphics are not included in all processors. See [Product Specifications](https://ark.intel.com/) for information about your processor.
- A chipset that supports processor graphics is required for Intel® Xeon® processors.

## Operating Systems

- Ubuntu 16.04.x long-term support (LTS), 64-bit: Minimum supported kernel is 4.14
- CentOS 7.4, 64-bit (for target only)
- Yocto Project Poky Jethro v2.0.3, 64-bit (for target only and requires modifications)

## ROS2 Packages
- [ROS2 Core packages](https://index.ros.org/doc/ros2/Installation/)
- [ROS2 Object Msgs](https://github.com/intel/ros2_object_msgs)
- [ROS2 Intel Realsense](https://github.com/intel/ros2_intel_realsense)

**Note**: A recommended to prepare for the development and target system by using [Intel Robot Devkit]().