function arduinoDeviceBasicExample(port)
% arduinoDeviceBasicExample: demonstrates basic use of the
% ArduinoDevice class.
%
%  * Find serial port of Arduino board connected with a USB cable
%    Use Arduino environment to help find port or read more details
%    here: http://arduino.cc/en/Guide/HomePage
%    Windows:
%      Use command getAvailableComPorts()
%      Or use 'Device Manager' and look under 'Ports'.
%      Typically 'COM3' or higher.
%    Mac OS X:
%      Typically something like '/dev/tty.usbmodem'
%    Linux:
%      Typically something like '/dev/ttyACM0'
%
% Usage: (replace 'COM5' with the serial port of your device)
%
% findAvailableComPorts()
% arduinoDeviceBasicExample('COM5')
%

    % Create the Arduino device object, open serial
    % connection and display device info.
    fprintf('Opening Arduino device...\n');
    dev = ArduinoDevice(port);
    dev.open();
    fprintf('Arduino Device Info:');
    dev.getDevInfo()

    % Pause for a little bit for added dramma
    pause(1.0)

    % Print dynamic methods
    dev.getCommands()
    fprintf('\n');

    % Clean up -
    dev.close();
    delete(dev);
    fprintf('Closed device. Goodbye!\n');
end
