# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:humble-ros-base-jammy
# install ros2 
RUN apt-get update && apt-get -y --no-install-recommends \
    ros-humble-desktop=0.10.0-1* \
    ros-humble-desktop-full=0.10.0-1* \
    neovim \
    && rm -rf /var/lib/apt/lists/*
