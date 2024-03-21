# Use an official NVIDIA CUDA image as the base
FROM nvidia/cuda:11.3.1-base-ubuntu20.04

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    wget \
    python3.8 \
    python3-pip \
    python3.8-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Update alternatives to use Python 3.8 as the default python3
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1 && \
    update-alternatives --set python3 /usr/bin/python3.8

# Upgrade pip and setuptools
RUN python3 -m pip install --upgrade pip setuptools wheel

# Install Python dependencies for Cellpose
RUN python3 -m pip install cellpose==3.0.5 torch==1.12.0

# Set environment variables for CUDA (might not be needed as the base image takes care of it)
ENV PATH /usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64

# Set entry point to bash
CMD ["/bin/bash"]
