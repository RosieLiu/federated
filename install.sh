#!/bin/bash

bazel --batch run //tensorflow_federated/tools/development:build_pip_package --     "/tmp/tensorflow_federated"
pip install --upgrade "/tmp/tensorflow_federated/tensorflow_federated-"*".whl"
