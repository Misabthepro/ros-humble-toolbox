# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images_ros2/create_ros_image.Dockerfile.em
FROM ros:humble-ros-base-jammy
# install ros2 
RUN apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends \
    ros-humble-desktop=0.10.0-1* \
    ros-humble-desktop-full=0.10.0-1* \
    && apt-get install -y \
    apt-utils avahi-daemon bash-completion bc bind9-host bind9-libs \
    bsdextrautils dialog groff-base iproute2 iputils-ping keyutils \
    language-pack-en language-pack-en-base less libatm1 libavahi-core7 libbpf0 \
    libdaemon0 libegl1-mesa libgail-common libgail18 libgl1-mesa-glx libgtk2.0-0 \
    libgtk2.0-bin libgtk2.0-common libjansson4 liblmdb0 libmaxminddb0 libmnl0 \
    libnss-mdns libnss-myhostname libpipeline1 libpopt0 librsvg2-common \
    libuchardet0 libvte-2.91-common libvte-common libxmuu1 libxtables12 locales \
    lsof man-db manpages mesa-vulkan-drivers mtr pigz rsync tcpdump time \
    traceroute tree unzip wget xauth \
    && rm -rf /var/lib/apt/lists/*

