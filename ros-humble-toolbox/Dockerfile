FROM ghcr.io/misabthepro/ros-humble-desktop:latest

# Installing upgrades and toolbox packages in second layer
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    apt-utils avahi-daemon bash-completion bc bind9-host bind9-libs \
    bsdextrautils dialog groff-base iproute2 iputils-ping keyutils \
    language-pack-en language-pack-en-base less libatm1 libavahi-core7 libbpf0 \
    libdaemon0 libegl1-mesa libgail-common libgail18 libgl1-mesa-glx libgtk2.0-0 \
    libgtk2.0-bin libgtk2.0-common libjansson4 liblmdb0 libmaxminddb0 libmnl0 \
    libnss-mdns libnss-myhostname libpipeline1 libpopt0 librsvg2-common \
    libuchardet0 libvte-2.91-common libvte-common libxmuu1 libxtables12 locales \
    lsof man-db manpages mesa-vulkan-drivers mtr pigz rsync tcpdump time \
    traceroute tree unzip wget xauth nano terminator gpg apt-transport-https sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg \
    && sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg \
    && echo "deb [arch=amd64,arm64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null \
    && rm -f packages.microsoft.gpg \
    && sudo apt update \
    && sudo apt install code gedit -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
