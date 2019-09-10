#!/bin/bash
set -euo pipefail

export openvino_labels=/opt/openvino_toolkit/ros2_openvino_toolkit/data/labels

if [ "$openvino_version" == "opensource" ]; then
  export model_downloader=/opt/openvino_toolkit/open_model_zoo/model_downloader
  export model_optimizer=/opt/openvino_toolkit/dldt/model-optimizer
elif [ "$openvino_version" == "binary"]; then
  export model_downloader=/opt/intel/openvino/deployment_tools/tools/model_downloader
  export model_optimizer=/opt/intel/openvino/deployment_tools/model_optimizer
else
  echo "openvino version error"
fi
