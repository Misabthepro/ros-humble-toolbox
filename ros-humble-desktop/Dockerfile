FROM ros:humble-ros-base-jammy

# Installing ROS desktop packages in first layer
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-humble-desktop=0.10.0-1* \
    ros-humble-desktop-full=0.10.0-1* \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*