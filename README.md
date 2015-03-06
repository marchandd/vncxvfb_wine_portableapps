# marchandd/vncxvfb_wine_portableapps

marchandd/vncxvfb_wine_portableapps [Docker:copyright:](https://docs.docker.com/ "Docker") image

## Description

A sandbox container with some Windows Portable-apps samples easy to install, update and use from Linux or Windows host.

### Goal

Based from vncxvfb_wine_firefox image:  
Complex method to produce a GUI containers to access to Windows Portable-apps into sandbox from Linux or Windows host.  
Image can run Windows software through emulator accessing by view remotely X displays.

After image and container builds, connect to container with VNC.  
Run scripts for Windows Portable-apps samples to install and use like explain in [docs](https://github.com/marchandd/vncxvfb_wine_portableapps/blob/master/docs/summary.md "Summary").

### Image size

Around 1300 Mb.

### References

[Marchand D. Maintainer](https://github.com/marchandd/ "Maintainer")

[Details source](https://github.com/marchandd/vncxvfb_wine_portableapps/ "Details")

[Image parent](https://github.com/marchandd/vncxvfb_wine_firefox/ "Parent")

[Part of project studies](https://github.com/marchandd/docker_index/ "References")

## Build image

### Command line

:computer: `docker pull marchandd/vncxvfb_wine_portableapps`

### Firewall

:warning: If your Firewall is enabled on the host, with default outgoing policy turned to 
deny, 
you will have to disable 5900 port filtering:
- Make a new rule for VNC (5900/TCP) to enable outgoing policy.

## Build container

### Command line

:computer: `docker run -d -p 127.0.0.1:XXXXX:5900 marchandd/vncxvfb_wine_portableapps`

### Command line explanation

All details on [docs](https://github.com/marchandd/vncxvfb_wine_portableapps/blob/master/docs/summary.md "Summary")

## Container usage

### Alias

All details on [docs](https://github.com/marchandd/vncxvfb_wine_portableapps/blob/master/docs/summary.md "Summary")

## Explanations

### Dockerfile

All details on [docs](https://github.com/marchandd/vncxvfb_wine_portableapps/blob/master/docs/summary.md "Summary")

### Display

GUI applications are not able to run directly in terminal.  
VNC client need to be installed to run GUI applications.  
Wine is installed but need to be initialized before using it.  
All Windows Portable-apps samples must been installed with deployed scripts.

Basic fixed password for Docker public repository from marchandd/vncxvfb_wine_firefox image = 'vncxvfb_wine_firefox'

All details on [docs](https://github.com/marchandd/vncxvfb_wine_portableapps/blob/master/docs/summary.md "Summary")

### Risks

VNC protocol but not crypted...
Reserve usage only in local mode.
