matlab_arduino_device
=====================

arduino_device.m - matlab serial interface for controlling and
communicating with Arduino devices using the DeviceInterface Arduino
library located in the arduino-libraries git repository.

    https://github.com/JaneliaSciComp/arduino-libraries

Authors:

    Peter Polidoro <polidorop@janelia.hhmi.org>
    Will Dickson <will@iorodeo.com>

License:

    BSD

##Example Usage

For help type "help ArduinoDevice" from the Matlab command line.
See example m files in examples directory.

```matlab
dev = ArduinoDevice('com4')  % creates a device object
dev.open()                   % opens a serial connection to the device
dev.getDevInfo()             % get device information
dev.getCommands()            % get device commands
dev.close()                  % close serial connection
delete(dev)                  % deletes the device
```

##Installation


Download and install the Arduino software if necessary from:

    http://arduino.cc/en/Main/Software

Connect Arduino device to computer with a USB cable.

Download this repository either using git or by downloading zip.

### Using git

    git clone https://github.com/JaneliaSciComp/matlab_arduino_device.git

### Download zip and uncompress

    https://github.com/JaneliaSciComp/matlab_arduino_device/archive/master.zip

Add the matlab\_arduino\_device repository directory and all its
subdirectories to the Matlab path.
