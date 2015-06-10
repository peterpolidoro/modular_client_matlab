modular_device_matlab
=====================

ModularDevice.m - matlab serial interface for controlling and
communicating with modular devices running the appropriate firmware.

Authors:

    Peter Polidoro <polidorop@janelia.hhmi.org>
    Will Dickson <will@iorodeo.com>

License:

    BSD

##Example Usage

For help type "help ModularDevice" from the Matlab command line.

See example m files in:

[./modular_device/examples/](./modular_device/examples/)

```matlab
% Linux and Mac OS X
ls /dev/tty*
serial_port = '/dev/ttyACM0'     % example Linux serial port
serial_port = '/dev/tty.usbmodem262471' % example Mac OS X serial port
% Windows getAvailableComPorts()
serial_port = 'COM4'             % example Windows serial port
dev = ModularDevice(serial_port) % creates a device object
dev.open()                       % opens a serial connection to the device
device_info = dev.getDeviceInfo()% get device info
dev.getMethods()                 % get device methods
dev.close()                      % close serial connection
delete(dev)                      % deletes the device
```

More Detailed Examples:

<https://github.com/JaneliaSciComp/modular_device_arduino>

##Installation

###Drivers

####Windows

When the modular device is Arduino-based, Windows needs drivers in
order to communicate with the Arduino. Follow install instructions
here:

<http://arduino.cc/en/Guide/Windows>

####Linux and Mac OS X

Extra drivers are unnecesary.

On linux, you may need to add yourself to the group 'dialout' in order
to have write permissions on the USB port:

```shell
sudo usermod -aG dialout $USER
```

###Download this repository from github

Either use git or download and uncompress zip file.

####Using git

Install git if necessary:

<http://git-scm.com/book/en/Getting-Started-Installing-Git>

Clone this repository:

```shell
git clone https://github.com/JaneliaSciComp/modular_device_matlab.git
```

####Using zip file

<https://github.com/JaneliaSciComp/modular_device_matlab/archive/master.zip>

###Setup Matlab

Find the path of this directory inside this downloaded repository and
add it and all its subdirectories to the Matlab path:

    ./modular_device/

###Setup Hardware

Connect modular device to computer with a USB cable.

Find serial port of connected device.

When modular device is Arduino-based, you can use Modular environment to
help find port. Read more details here:

<http://arduino.cc/en/Guide/HomePage>

####Windows:

Typically 'COM3' or higher. Use Matlab command getAvailableComPorts()
or use 'Device Manager' and look under 'Ports'.

####Mac OS X:

List directory contents of /dev:

```shell
ls /dev
```

Typically something like '/dev/tty.usbmodem'

####Linux:

List directory contents of /dev:

```shell
ls /dev
```

Typically something like '/dev/ttyACM0'

If you see this error:

```matlab
Error using serial/fopen (line 72)
Open failed: Port: /dev/ttyACM0 is not available. Available ports: /dev/ttyS0.
Use INSTRFIND to determine if other instrument objects are connected to the requested device.
```

You can use /dev/ttyACM0 but you need to let the library know that you
will be using it. To specify the ports on your system, copy the
java.opts file from this repository into the directory you start MATLAB.

Restart Matlab and type:

```matlab
pwd
```

This will tell you the directory where you need to place the java.opts file.

Save this file into that directory:

[java.opts](java.opts)
