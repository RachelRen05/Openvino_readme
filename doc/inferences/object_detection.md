# Overview
The section depict the kind of Object Detection, which produces object classification and its location based ROI. 
Two kinds of models are supported currently:
- SSD based Object Detection Models
    * SSD300-VGG16, SSD500-VGG16, Mobilenet-SSD (both caffe and tensorflow)
- YoloV2

## Demo Result Snapshots
See below pictures for the demo result snapshots.
* object detection input from realsense camera

![object_detection_demo_realsense](https://github.com/intel/ros2_openvino_toolkit/blob/devel/data/images/object_detection.gif "object detection demo realsense")

# Preparation
Before using the supported models, you need to first downloand and optimize them into OpenVINO mode.
**NOTE**: mobilenet-SSD caffe model is the default one used in the Object Detection configuration. 

## Mobilenet-SSD (Caffe) model
1. Download
2. Optimize
3. Install
## Mobilenet-SSD (Tensorflow) model
1. Download
2. Optimize
3. Install
## YoloV2 model
1. Download
2. Optimize
3. Install
## SSD300-VGG16 model
1. Download
2. Optimize
3. Install
# Launching Steps

# Advanced Configuration

Binding constraint for some configurations:

|Model Location|FP|Engine|Batch Size|
|---|---|---|---|
|/path/to/mobilenet-fp16.xml|16|MYRIAD<br>GPU|1|
|/path/to/mobilenet-fp32.xml|32|CPU<br>GPU|1|