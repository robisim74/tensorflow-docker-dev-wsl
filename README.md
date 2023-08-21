# Tensorflow Docker Dev WSL
> Tensorflow GPU with [Docker Dev Environments](https://docs.docker.com/desktop/dev-environments/) in WSL

## Requirements
- Windows 11
- Windows Subsystem for Linux (WSL 2)
- [Git on WSL](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-git) (optional)
- [Docker Desktop WSL 2](https://docs.docker.com/desktop/wsl/)
- Latest [NVIDIA Windows GPU Driver](https://www.nvidia.com/Download/index.aspx?lang=en-us)
- Visual Studio Code with [Dev Container](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension

## How to use
- Create a new repository from the template or clone the code
- In `Dockerfile`:
  - Update `USERNAME` _ARG_ to create a non-root user
  - Update `USER_UID` and `USER_GID` _ARGs_ (use `id` command in your Terminal to get them)
  - Update tensorflow image version (optional)
  - Update required packages (optional)
- Update pip packages in `requirements.txt` (optional)
- Docker Desktop > Dev Environments > Create (from a _Git repo_ or a _Local directory_)

After the Dev Environment has been created:
- Docker Desktop > Dev Environments > OPEN IN VSCODE
- VSCODE > Terminal > New Terminal
  ```
  python main.py
  ```

> Note. If you update the configuration files after the Dev Environment has been created, you must delete and recreate it
