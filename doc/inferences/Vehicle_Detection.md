# Vehicle Detection
## Download Models
### OpenSource Version
* download the optimized Intermediate Representation (IR) of model (excute _once_)<br>
  ```bash
  cd /opt/openvino_toolkit/open_model_zoo/model_downloader
  sudo python3 downloader.py --name vehicle-license-plate-detection-barrier-0106 --output_dir /opt/openvino_toolkit/models/vehicle-license-plate-detection/output/FP32
  sudo python3 downloader.py --name vehicle-attributes-recognition-barrier-0039 --output_dir /opt/openvino_toolkit/models/vehicle-attributes-recongnition/output/FP32
  sudo python3 downloader.py --name license-plate-recognition-barrier-0001 --output_dir /opt/openvino_toolkit/models/license-plate-recognition/output/FP32
  ```
* copy label files (excute _once_)<br>
  ```bash
  sudo cp /opt/openvino_toolkit/ros2_openvino_toolkit/data/labels/object_detection/vehicle-license-plate-detection-barrier-0106.labels /opt/openvino_toolkit/models/vehicle-license-plate-detection/output/FP32/Security/object_detection/barrier/0106/dldt/```
  ```

### Binary Version
* download the optimized Intermediate Representation (IR) of model (excute once)
  ```bash
  cd /opt/intel/openvino/deployment_tools/tools/model_downloader
  sudo python3 downloader.py --name vehicle-license-plate-detection-barrier-0106 --output_dir /opt/openvino_toolkit/models/vehicle-license-plate-detection/output/FP32
  sudo python3 downloader.py --name vehicle-attributes-recognition-barrier-0039 --output_dir /opt/openvino_toolkit/models/vehicle-attributes-recongnition/output/FP32
  sudo python3 downloader.py --name license-plate-recognition-barrier-0001 --output_dir /opt/openvino_toolkit/models/license-plate-recognition/output/FP32
  ```
* copy label files (excute _once_)<br>
  ```bash
  sudo cp /opt/openvino_toolkit/ros2_openvino_toolkit/data/labels/object_detection/vehicle-license-plate-detection-barrier-0106.labels /opt/openvino_toolkit/models/vehicle-license-plate-detection/output/FP32/Security/object_detection/barrier/0106/dldt/
  ```
