#modular_client_matlab

ModularClient.m - This is the Matlab modular device client library for
    communicating with and calling remote methods on modular device
    servers.

Authors:

    Peter Polidoro <polidorop@janelia.hhmi.org>
    Will Dickson <will@iorodeo.com>

License:

    BSD

##Example Usage

For help type "help ModularClient" from the Matlab command line.

See example m files in:

[./modular_client/examples/](./modular_client/examples/)

```matlab
% Linux and Mac OS X
ls /dev/tty*
serial_port = '/dev/ttyACM0'     % example Linux serial port
serial_port = '/dev/tty.usbmodem262471' % example Mac OS X serial port
% Windows
getAvailableComPorts()
ans =
'COM1'
'COM4'
serial_port = 'COM4'             % example Windows serial port
%
dev = ModularClient(serial_port) % creates a client object
dev.open()                       % opens a serial connection to the device
device_id = dev.getDeviceId()    % get device id
dev.getMethods()                 % get device methods
dev.close()                      % close serial connection
delete(dev)                      % deletes the client
```

More Detailed Modular Device Information:

<https://github.com/janelia-modular-devices/modular-devices>

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

####Using git

Install git if necessary:

<https://github.com/janelia-idf/git_setup>

Clone this repository:

(e.g. PATH = c:\Users\User\My Documents\Matlab).

```shell
cd PATH
git clone https://github.com/janelia-matlab/modular_client_matlab.git
git submodule init
git submodule update
```

###Setup Matlab

Add this path and all its subdirectories to the Matlab path:

    PATH\modular_client_matlab\modular_client\

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
