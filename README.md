# vscpl1drv-logger - VSCP Level I CAN4VSCP Logger Driver

<img src="https://vscp.org/images/logo.png" width="100">

vscpl1drv-logger is a VSCP level I driver for diagnostic logging. It makes it possible to log (VSCP Level I events to a text file. Several drivers can be loaded logging data to different output files and using different filter/masks.

## Platforms
  * Linux
  * Windows


## Driver for Linux**

```bash
vscpl1drv-logger.so
```

## Driver for Windows

```bash
vscpl1drv-logger.dll
```
## Install location

### Linux

From version 14.0.0 the driver is installed in */var/lib/vscp/drivers/level1*

### Windows
From version 14.0.0 the driver is installed in */program files/vscpd/drivers/level1*

## Configuration string

##### Windows

```bash
path;filter;mask
```

**Example**
```bash
c:\logfile.log;0x0;0x0
```

##### Linux

```bash
path;filter;mask
```
**Example**
```bash
/tmp/logfile;0x0;0x0
```

The absolute or relative path including the file name to the file that log data should be written to. The filename is followed by the optional 32-bit filter and mask. The default is all events logged.

Note that the filter/mask looks at the CAN ID. If you work with VSCP look at format of the 29 bit CAN identifier in VSCP Bit 32 is set to one for an extended frame (all VSCP frames) and bit 30 is set to one for RTR frames (never for VSCP).

## Flags

* **0** - Append data to an existing file (create it if it's not available).
* **1** - Create a new file or rewrite an old file with new data.
*
## Status return

The CanalGetStatus call returns the status structure with the channel_status member having the following meaning:


*  0 is always returned.

## Log file format

The log file have the following format and consist of the following parts

   * Time when frame was received
   * Timestamp
   * Flags
   * ID
   * Number of databytes
   * Databytes


## Install the driver on Linux

Install Debian package

```bash
> sudo apt install ./vscpl2drv-logger_1.1.0-1_amd64.deb
```

using the latest version from the repositories [release section](https://github.com/grodansparadis/vscpl1drv-logger/releases).

or

```
./configure 
./make
sudo make install
```

use the switch **--enable-debug** if you want a debug build.

## Install the driver on Linux using vscp private repository

**Warning !!!** *Currently this is very much experimental*

```bash
wget -O - http://apt.vscp.org/apt.vscp.org.gpg.key | sudo apt-key add -
```

then add

```bash
deb http://apt.vscp.org/debian buster main
deb http://apt.vscp.org/debian eoan main
```

to the file

```bash
/etc/apt/sources.list
```

replace **eoan** with the os-release you have installed and **debian** to *debian*, *ubuntu* or *raspian*

## Install the driver on Windows
Install using the binary install file in the release section.

## How to build the driver on Linux

```bash
git clone https://github.com/grodansparadis/vscpl1drv-logger.git
cd vscpl1drv-logger
git submodule update --init
autoreconf
./configure
make
make install
```

Default install folder is **/var/lib/vscp/drivers/level1**

You need *build-essentials* and *git* installed on your system.

```bash
sudo apt update && sudo apt -y upgrade
sudo apt install build-essential git
```


## How to build the driver on Windows
The source contains a Visual Studio project. Use this project to build the driver.

---

There are many Level I drivers (CANAL drivers) available in VSCP & Friends framework that can be used with both VSCP Works and the VSCP Daemon (vscpd) and other tools that interface the drivers using the CANAL standard interface. Added to that many Level II and Level III drivers are available that can be used with the VSCP Daemon.

Level I drivers is documented [here](https://docs.vscp.org/vscpd/latest/#/level_i_drivers).

Level II drivers is documented [here](https://docs.vscp.org/vscpd/latest/#/level_ii_drivers)


The VSCP project homepage is here <https://www.vscp.org>.

The [manual](https://docs.vscp.org/vscpd/latest) for vscpd contains full documentation. Other documentation can be found on the  [documentaion portal](https://docs.vscp.org).

The vscpd source code may be downloaded from <https://github.com/grodansparadis/vscp>. Source code for other system components of VSCP & Friends are here <https://github.com/grodansparadis>

Copyright (C) 2000-2020 Ake Hedman, Grodans Paradis AB - MIT license.
