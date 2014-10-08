matlab_arduino_device
=====================

ArduinoDevice.m - matlab serial interface for controlling and
communicating with Arduino devices running the appropriate firmware.

Authors:

    Peter Polidoro <polidorop@janelia.hhmi.org>
    Will Dickson <will@iorodeo.com>

License:

    BSD

##Example Usage

For help type "help ArduinoDevice" from the Matlab command line.

See example m files in:

[./arduino_device/examples/](./arduino_device/examples/)

```matlab
% Linux and Mac OS X
ls /dev/tty*
serial_port = '/dev/ttyACM0'     % example Linux serial port
serial_port = '/dev/tty.usbmodem262471' % example Mac OS X serial port
% Windows
getAvailableComPorts()
serial_port = 'COM4'             % example Windows serial port
dev = ArduinoDevice(serial_port) % creates a device object
dev.open()                       % opens a serial connection to the device
dev.getCommands()                % get device commands
dev.close()                      % close serial connection
delete(dev)                      % deletes the device
```

##Installation

###Drivers

####Windows

Windows needs drivers in order to communicate with an
Arduino. Follow install instructions here:

<http://arduino.cc/en/Guide/Windows>

####Linux and Mac OS X

Extra drivers are unnecesary.

###Download this repository from github

Either use git or download and uncompress zip file.

####Using git

Install git if necessary:

<http://git-scm.com/book/en/Getting-Started-Installing-Git>

Clone this repository:

```shell
git clone https://github.com/JaneliaSciComp/matlab_arduino_device.git
```

####Using zip file

<https://github.com/JaneliaSciComp/matlab_arduino_device/archive/master.zip>

###Setup Matlab

Find the path of this directory inside this downloaded repository and
add it and all its subdirectories to the Matlab path:

    ./arduino_device/

###Setup Hardware

Connect Arduino device to computer with a USB cable.

Find serial port of connected device. Use Arduino environment to help
find port or read more details here:

<http://arduino.cc/en/Guide/HomePage>

####Windows:

Typically 'COM3' or higher. Use 'Device Manager' and look under
'Ports'.

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

