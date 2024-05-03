# Use an official base image that is compatible with GitHub Codespaces
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install Python 3.12 and related packages
RUN sudo apt-get update && \
    sudo apt-get install -y software-properties-common && \
    sudo add-apt-repository ppa:deadsnakes/ppa && \
    sudo apt-get update && \
    sudo apt-get install -y python3.12 python3.12-venv python3.12-dev

# Update the alternatives to set Python 3.12 as the default for python and python3
RUN sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.12 1 && \
    sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 1

# Install pip for Python 3.12
RUN sudo apt-get install -y python3-pip && \
    sudo python3 -m pip install --upgrade pip

# Set pip to use Python 3.12 as default
RUN sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
