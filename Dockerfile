# Use an official Miniconda3 image as a base
FROM continuumio/miniconda3:latest

# Create xenium environment
RUN conda create --name xenium python=3.9.12 && \
    conda init bash

# Activate xenium environment and install libraries
RUN /bin/bash -c "source activate xenium && \
    conda install -y tifffile pyarrow pandas scipy && \
    conda deactivate"

# Create cellpose environment
RUN conda create --name cellpose python=3.8 && \
    conda init bash

# Activate cellpose environment and install cellpose
RUN /bin/bash -c "source activate cellpose && \
    python -m pip install cellpose && \
    conda deactivate"

# Set environment variables
ENV PATH /opt/conda/envs/xenium/bin:$PATH
ENV PATH /opt/conda/envs/cellpose/bin:$PATH

# Set entry point to bash
CMD ["/bin/bash"]

