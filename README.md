# Install script for running ros2-desktop in a distrobox container

### Prerequisites
Any amd64 or arm64 Linux distribution that supports running podman.

## Installation on Ubuntu.
### 1. Run the install script(Only for Ubuntu, Debian)
```sh
wget -qO- https://raw.githubusercontent.com/Misabthepro/ros-humble-toolbox/main/install | sh
```
For other linux distros just run the package manager commands of that distro which correspond to those used in the install script and then run the rest of the commands in the script.

## Installation on Windows(Using WSL)
### 1. Open windows powershell `type wt in windows run (win + r)` and run the command  ..skip if wsl installed..
```
wsl --install -d Ubuntu-22.04
```
Do the initial setup as instructed by windows

### 2. Modify `/etc/wsl.conf` after opening ubuntu under wsl
Open the file `/etc/wsl.conf`
```sh
sudo nano /etc/wsl.conf
```

Then add the line `command="mount --make-rshared /"` under the `[boot]` section, if it doesn't exist add it.
```
[boot]
command="mount --make-rshared /"
```
### 3. Restart wsl
Run this in a powershell window
```
wsl --shutdown
```
then open ubuntu shell again.

### 4. Run the install script
```sh
wget -qO- https://raw.githubusercontent.com/Misabthepro/ros-humble-toolbox/main/install | sh
```
For other linux distros just run the package manager commands of that distro which correspond to those used in the install script and then run the rest of the commands in the script.

## Post Installation
### 1. Start the distrobox container
```sh
distrobox enter --root ros2
```
Important: The password created during first run is the root password of the container and **not** the host. To keep things simple, it is best to set container root password the same as host password.

### 2. Run whatever you want!
Tip: Running `terminator` from within the ros2 container allows easy creation and management of multiple shell sessions of the container environment.
