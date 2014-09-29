function arduino_device_basic_example(port)
% arduino_controller_basic_example: demonstrates basic use of the
% ArduinoStepperController class to control the arduino stepper
% controller.
%
% Usage: (replace com5 with the serial port of your device)
%
% arduino_device_basic_example('com5')
%
%  * Find serial port of Arduino board connected with a USB cable
%    Use Arduino environment to help find port or read more details
%    here: http://arduino.cc/en/Guide/HomePage
%    Windows:
%      Typically 'com3' or higher. Use 'Device Manager' and look
%      under 'Ports'.
%    Mac:
%      Typically something like '/dev/tty.usbmodem'
%    Linux:
%      Typically something like '/dev/ttyACM0'
%

    % Create the Arduino device object, open serial
    % connection and display device info.
    fprintf('Opening Arduino device...\n');
    dev = ArduinoDevice(port);
    dev.open();
    fprintf('Arduino Device Info:');
    dev.getDevInfo()

    % Pause for a little bit for added dramma
    pause(2.0)

    % Print dynamic methods
    dev.getCommands()
    fprintf('\n');

    % Clean up -
    dev.close();
    delete(dev);
    fprintf('Closed device. Goodbye!\n');
end
