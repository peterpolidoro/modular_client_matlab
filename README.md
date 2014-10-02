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

    matlab_arduino_device/arduino_device/examples/

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

Download this repository:

    https://github.com/JaneliaSciComp/matlab_arduino_device

Add the following directory (inside this downloaded repository) and all
its subdirectories to the Matlab path:

    matlab_arduino_device/arduino_device/
