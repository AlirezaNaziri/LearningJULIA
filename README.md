# LearningJULIA
A repo for learning JULIA based on Codespace DevContainer that provides an isolated and ready-to-use environment for running JULIA codes.


on Github, on Codespaces, click on configure devcontainer and have below devcontainer.json and Dockerfile in .devcontainer folder

devcontainer.json
```
{
    "name": "Julia DevContainer",
    "build": {
        "dockerfile": "Dockerfile"
    },
    "settings": {
        "terminal.integrated.shell.linux": "/bin/bash"
    },
    "extensions": [
        "julialang.language-julia"
    ],
    "postCreateCommand": "julia -e 'using Pkg; Pkg.instantiate()'"
}

```

Dockerfile
```
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

```


## Package Mode
In Julia, entering ] in the REPL (Read-Eval-Print Loop) switches you to the package management mode, indicated by the pkg> prompt;
tasks such as adding, updating, removing, and checking the status of packages. 

To exit from Pkg mode, simply need to press the backspace.

Activate a Project Environment:
```
pkg> activate .
```

Add a Package:
```
pkg> add Polynomials
```
Remove a Package:
```
pkg> rm Polynomials
```

Update Packages
```
pkg> update
```

Check Status:
```
pkg> status
```

Instantiate the Environment:
```
pkg> instantiate
```


to Call Python lib in Julia
```
using Pkg
Pkg.add("PyCall")
```

```
using PyCall
np =pyimport("numpy")
```

arr = np.array([1, 2, 3])
println(arr)


