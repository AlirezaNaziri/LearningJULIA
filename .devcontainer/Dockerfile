# Use the official Julia image from DockerHub
# FROM julia:1.9-buster
FROM julia
# Install any additional packages you need
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set up a working directory
WORKDIR /workspace

# Install Julia packages (if needed)
RUN julia -e 'using Pkg; Pkg.add("IJulia"); Pkg.add("Plots");'

# Expose ports (if needed, for example for Jupyter notebooks)
EXPOSE 8888