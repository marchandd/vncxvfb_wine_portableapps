Portability tested for vncxvfb_wine-portable-apps_samples image
================================================================

Return to [summary](summary.md "Portable-Apps summary")

Linux test environment
----------------------

Tested version successfully based:

### Host ###

On VNC client:
- KUbuntu (14.10)
- Docker (1.4.1)
- KRDC-VNC (4.14.1)  
  Adress vnc://localhost:PORT

### Client ###

On Docker container with Root account:
- Ubuntu (14.10)
- Wine (1.17.33)
- Winetricks with options:  
  win7
  mfc42
  windowmanagermanaged=n
  sandbox

Windows test environment
------------------------

Tested version successfully based:

### Host ###

On VNC client:
- Windows (7 & 8.1)
- Boot2Docker (1.4.1)
- VirtualBox (4.3.20)
- MsysGit (1.9.4)
- Vnc-viewer (5.2.1)  
  Address Boot2Docker_IPv4:PORT

Remark:  
Docker is accessing on Windows only through VirtualBox network interface. 
So, using 127.0.0.1 is not possible...
- You must choose Boot2Docker_IPv4 remained at boot start into the 
dedicated console.

### Client ###

On Docker container with Root account:
- Ubuntu (14.10)
- Wine (1.17.33)
- Winetricks with options:  
  win7
  mfc42
  windowmanagermanaged=n
  sandbox

Softwares tested
----------------

- | State |  | Portable-app
-- | -- | --
| Silver | | [ToDoList](todolist.md "ToDoList_Details") ZIP-app
| Silver | | [FreeCommander](freecommander.md "FreeCommander_Details") Portable-app
| Gold | | [Notepad++](notepad.md "Notepad++_Details") Portable-app
| Gold | | [WinMerge](winmerge.md "WinMerge_Details") Portable-app
| Gold | | [AntRenamer](antrenamer.md "AntRenamer_Details") Portable-app

In case of crash
----------------

Sometimes happen when mouse is not available and you can't interact with container X display.

Proceed like this:
- Disconnect container from VNC.
- :computer: Open console with `sudo su`.
- :computer: Run `docker ps -a`  
  Search container name with "vncxvfb_wine-portable-apps_samples".  
  Identify ContainerID.
- :computer: Run `docker stop ContainerID`.
- :computer: Run `docker start ContainerID`.
- Connect container from VNC.
