# Electron + WSL2 + Docker

## Prerequisites

- Install VcXsrv and setup XLaunch (see [GUI app + WSL2 + Docker](https://github.com/WilliamJSS/gui-app-wsl-docker))

## Run

__For to see your ip, open Powershell and send command `ipconfig` and search for "WSL vEthernet Adapter"__

```bash
make up DISPLAY=your.ip
```

## References

[Quick Start - Electron](https://www.electronjs.org/docs/latest/tutorial/quick-start)
[Building an Electron App in Windows with WSL 2 and Ubuntu](https://www.beekeeperstudio.io/blog/building-electron-windows-ubuntu-wsl2)
