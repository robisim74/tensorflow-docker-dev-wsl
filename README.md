# Tensorflow Docker Dev WSL
> Tensorflow GPU with [Docker Dev Environments](https://docs.docker.com/desktop/dev-environments/) in WSL

## Requirements
- Windows 11
- [Windows Subsystem for Linux (WSL 2)](https://learn.microsoft.com/en-us/windows/wsl/)
- [Git on WSL](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-git) (optional)
- [Docker Desktop WSL 2](https://docs.docker.com/desktop/wsl/)
- Latest [NVIDIA Windows GPU Driver](https://www.nvidia.com/Download/index.aspx?lang=en-us)
- Visual Studio Code with [Dev Container](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension

## How to use
- Create a new repository from the template or clone the code
- Update tensorflow image in `Dockerfile` (optional)
- Update required packages in `Dockerfile` (optional)
- Update pip packages in `requirements.txt` (optional)
- Docker Desktop > Dev Environments > Create (from a _Git repo_ or a _Local directory_)

After the Dev Environment has been created:
- Docker Desktop > Dev Environments > OPEN IN VSCODE
- VSCODE > Terminal > New Terminal
  ```
  python main.py
  ```