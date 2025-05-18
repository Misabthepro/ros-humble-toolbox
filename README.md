# Install script for running ros2-desktop in a distrobox container

### Prerequisites
Any amd64 or arm64 Linux distribution that supports running podman.

### 1. Run the install script(Only for Ubuntu, Debian)
```sh
wget -qO- https://raw.githubusercontent.com/Misabthepro/ros-humble-toolbox/main/install | sh
```

### 2. Start the distrobox container
```sh
distrobox run --root ros2
```
Important: The password created during first run is the root password of the container and **not** the host. To keep things simple, it is best to set container root password the same as host password.

### 3. Run whatever you want!
Tip: Running `terminator` from within the ros2 container allows easy creation and management of multiple shell sessions of the container environment.
