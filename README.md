# Tensorflow Docker Dev WSL
> Tensorflow GPU with Docker in WSL2 using VS Code Dev Containers

## Requirements
- Windows 11
- Windows Subsystem for Linux (WSL2)
- [Git on WSL](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-git) (optional)
- [Docker Desktop WSL2](https://docs.docker.com/desktop/wsl/)
- Latest [NVIDIA Windows GPU Driver](https://www.nvidia.com/en-us/drivers/)
- The [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)
- Visual Studio Code with [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension

## How to use
- Create a new repository from the template or clone the code in WSL
- In `Dockerfile`:
  - Update the [TensorFlow Docker image](https://hub.docker.com/r/tensorflow/tensorflow/): run `nvidia-smi` command in your Terminal, and get the CUDA version. Then find the Tensorflow version compatible with the CUDA version [here](https://www.tensorflow.org/install/source#gpu)
  - Update `USERNAME` _ARG_ to create a non-root user
  - Update `USER_UID` and `USER_GID` _ARGs_ (use `id` command in your Terminal to get them)
  - Update required packages (optional)
- Update pip packages in `requirements.txt` (optional)
- Open your project with VS Code and reopen in Container: (F1) use the **Dev Containers: Reopen in Container** command

Run `pyhton main.py` to test it.