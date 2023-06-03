# Python 3.11.1 Installation Guide

This README provides instructions for installing Python 3.11.1 from source on an Ubuntu machine.

## Prerequisites

- Ubuntu machine
- Sudo or root access
- Internet access

## Installation Steps

1. **Download the Python 3.11.1 source code**

    Open a terminal and navigate to the `/tmp/` directory:

    ```bash
    cd /tmp/
    ```

    Download the Python 3.11.1 source code tarball:

    ```bash
    wget https://www.python.org/ftp/python/3.11.1/Python-3.11.1.tgz
    ```

2. **Extract the downloaded tarball**

    Extract the contents of the downloaded tarball:

    ```bash
    tar -xzvf Python-3.11.1.tgz
    ```

3. **Install necessary dependencies**

    Navigate to the extracted Python directory:

    ```bash
    cd Python-3.11.1/
    ```

    Update your package list:

    ```bash
    sudo apt-get update
    ```

    Install the necessary dependencies required for the build process:

    ```bash
    sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev
    ```

4. **Configure and build Python**

    Configure the build process:

    ```bash
    ./configure --enable-optimizations
    ```

    Build Python using make:

    ```bash
    make -j `nproc`
    ```

5. **Install Python**

    Install the built Python using make altinstall to avoid replacing the default Python binary:

    ```bash
    sudo make altinstall
    ```

6. **Create a symbolic link**

    Create a symbolic link to your installed Python:

    ```bash
    sudo ln -s /usr/local/bin/python3.11 /usr/local/bin/python
    ```

7. **Verify the installation**

    Check your installed Python version:

    ```bash
    python3 --version
    ```

    If the installation was successful, you should see `Python 3.11.1`.

