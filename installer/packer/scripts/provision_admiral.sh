#!/bin/sh
# Copyright 2017 VMware, Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# start docker
echo "starting Docker .."
systemctl daemon-reload
systemctl start docker
echo "Docker started"

# pull admiral image
echo "Pulling Admiral Docker image.."
# TODO(lcastellano): parametrize the image name
docker pull docker.io/vmware/admiral:dev-vic
echo "Pulled Admiral image"

# stop docker
echo "stopping Docker .."
systemctl stop docker
echo "Docker stopped"
