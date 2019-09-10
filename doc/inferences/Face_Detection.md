# Face Detection

## Demo Result Snapshots
See below pictures for the demo result snapshots.
* face detection input from image
![face_detection_demo_image](https://github.com/intel/ros2_openvino_toolkit/blob/devel/data/images/face_detection.png "face detection demo image")
## Download Models
* download the optimized Intermediate Representation (IR) of model (excute _once_)<br>
	```bash
    cd $model_downloader
    sudo python3 downloader.py --name face-detection-adas-0001 --output_dir /opt/openvino_toolkit/models/face_detection/output/FP32
    sudo python3 downloader.py --name face-detection-adas-0001-fp16 --output_dir /opt/openvino_toolkit/models/face_detection/output/FP16
    sudo python3 downloader.py --name age-gender-recognition-retail-0013 --output_dir /opt/openvino_toolkit/models/age-gender-recognition/output/FP32
    sudo python3 downloader.py --name emotions-recognition-retail-0003 --output_dir /opt/openvino_toolkit/models/emotions-recognition/output/FP32
    sudo python3 downloader.py --name head-pose-estimation-adas-0001 --output_dir /opt/openvino_toolkit/models/head-pose-estimation/output/FP32
	```
* copy label files (excute _once_)<br>
	```bash
    sudo cp $openvino_labels/emotions-recognition/FP32/emotions-recognition-retail-0003.labels /opt/openvino_toolkit/models/emotions-recognition/output/FP32/Retail/object_attributes/emotions_recognition/0003/dldt/
    sudo cp $openvino_labels/face_detection/face-detection-adas-0001.labels /opt/openvino_toolkit/models/face_detection/output/FP32/Transportation/object_detection/face/pruned_mobilenet_reduced_ssd_shared_weights/dldt/
    sudo cp $openvino_labels/face_detection/face-detection-adas-0001-fp16.labels /opt/openvino_toolkit/models/face_detection/output/FP16/Transportation/object_detection/face/pruned_mobilenet_reduced_ssd_shared_weights/dldt/
	```
