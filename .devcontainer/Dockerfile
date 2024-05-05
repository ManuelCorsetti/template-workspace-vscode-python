# Use an official base image from Microsoft that is compatible with GitHub Codespaces
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install system dependencies for Python and C++ development
RUN sudo apt-get update && sudo apt-get install -y \
    build-essential \
    python3-pip \
    python3-distutils

# Copy local code to the container (make sure to have a setup.sh script in your context)
COPY --chown=vscode:vscode . .

# Run a shell command to set executable permissions and execute the script
RUN sudo chmod +x setup.sh && ./setup.sh

# Set the working directory in the container
WORKDIR /home/vscode

# Set the default command for the container
CMD ["/bin/bash"]