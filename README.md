# Install script for running ros2-desktop in a distrobox container

### 1. Run the install script
```sh
wget -qO- https://raw.githubusercontent.com/Misabthepro/ros-humble-toolbox/main/install | sh
```

### 2. Start the distrobox container
```sh
distrobox run --root ros2
```
Important: The password created during first run is of the container *not* the host. Don't forget the set password. To keep things simple, it is best to set container root password the same as host.

### 3. Run whatever you want!
Tip: Running `terminator` from within the ros2 container allows easy creation and management of multiple shell sessions of the container environment.
