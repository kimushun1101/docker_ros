#!/bin/sh
cd `dirname $0`
mkdir -p src/dashing_desktop_vnc
echo `dirname src/dashing_desktop_vnc`
docker run --name dashing --privileged -v `dirname src/dashing_desktop_vnc`:/home/ubuntu/dev_ws/src -p 6080:80 --shm-size=512m tiryoh/ros2-desktop-vnc:dashing