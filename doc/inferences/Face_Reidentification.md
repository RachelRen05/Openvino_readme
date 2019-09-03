# Face Reidentification
## Download Models
### OpenSource Version
* download the optimized Intermediate Representation (IR) of model (excute _once_)<br>
  ```bash
  cd /opt/openvino_toolkit/open_model_zoo/model_downloader
  sudo python3 downloader.py --name landmarks-regression-retail-0009 --output_dir /opt/openvino_toolkit/models/landmarks-regression/output/FP32
  sudo python3 downloader.py --name face-reidentification-retail-0095 --output_dir /opt/openvino_toolkit/models/face-reidentification/output/FP32
  ```

### Binary Version
* download the optimized Intermediate Representation (IR) of model (excute once)
	```bash
  cd /opt/intel/openvino/deployment_tools/tools/model_downloader
  sudo python3 downloader.py --name landmarks-regression-retail-0009 --output_dir /opt/openvino_toolkit/models/landmarks-regression/output/FP32
  sudo python3 downloader.py --name face-reidentification-retail-0095 --output_dir /opt/openvino_toolkit/models/face-reidentification/output/FP32
	```

