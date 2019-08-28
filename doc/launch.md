# Setup Environment
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
# Launching Programs
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
