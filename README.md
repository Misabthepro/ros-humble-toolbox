
# ROS 2 Humble in a Distrobox Container

This repository provides an easy way to set up ROS 2 Humble using a Distrobox container on Linux or Windows (via WSL). It is designed to work with Ubuntu, Debian, and other Linux distributions that support Podman.

## Prerequisites

- A Linux system (amd64 or arm64) with Podman support  
- Or Windows with WSL and Ubuntu 22.04 installed  

---

## Installation on Ubuntu/Debian

### 1. Run the Install Script

Open a terminal and run:

```sh
wget -qO- https://raw.githubusercontent.com/Misabthepro/ros-humble-toolbox/main/install | sh
```

> For other Linux distributions, use your package manager to install the necessary dependencies listed in the script, then manually run the remaining script commands.

## Installation on Windows (Using WSL)

### 1. Install WSL with Ubuntu 22.04

Open PowerShell and run:

```sh
wsl --install -d Ubuntu-22.04
```

Follow the setup instructions from Windows.

### 2. Edit the WSL Configuration

Inside the Ubuntu terminal, open the configuration file:

```sh
sudo nano /etc/wsl.conf
```

Add the following line under the `[boot]` tag:

```
command="mount --make-rshared /"
```

Save and close the file.

### 3. Restart WSL

In PowerShell, run:

```sh
wsl --shutdown
```

Then, reopen your Ubuntu shell.

### 4. Run the Install Script

In the Ubuntu shell (inside WSL), run:

```sh
wget -qO- https://raw.githubusercontent.com/Misabthepro/ros-humble-toolbox/main/install | sh
```

> Again, if you're using a different Linux distro, install dependencies manually, then follow the rest of the script.

---

## Post Installation

### 1. Start the ROS 2 Distrobox Container

```sh
distrobox enter --root ros2
```

Note: The password you create on the first run is the root password for the container only, not your host system. To avoid confusion, consider using the same password as your host.

### 2. Start Working in the ROS 2 Environment

You can now run any ROS 2 commands inside the container.

Tip: To manage multiple shell sessions inside the container easily, use:

```sh
terminator
```
