# CUDA 12.1 + Ubuntu 22.04 (glibc >= 2.35)
FROM nvidia/cuda:12.1.1-runtime-ubuntu22.04

# Install Python, pip, and system packages
RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-dev build-essential git curl && \
    rm -rf /var/lib/apt/lists/*

# Install PyTorch with CUDA support
RUN pip3 install --upgrade pip && \
    pip3 install torch==1.11.0 torchvision==0.12.0

# Copy requirements before installing
COPY requirements.txt .

# Copy requirements and install remaining Python packages
RUN pip3 install -r requirements.txt

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglu1-mesa \
    freeglut3-dev \
    libosmesa6-dev \
    libgl1-mesa-dev \
    libglfw3 \
    libglfw3-dev \
    patchelf

# Install PyOpenGL (bindings for OpenGL in Python)
RUN pip install PyOpenGL PyOpenGL_accelerate

