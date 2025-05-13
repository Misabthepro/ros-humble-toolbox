# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM osrf/ros:humble-desktop-full

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    neovim
    && rm -rf /var/lib/apt/lists/*