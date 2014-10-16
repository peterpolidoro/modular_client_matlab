function remoteDeviceBasicExample(port)
% remoteDeviceBasicExample: demonstrates basic use of the
% RemoteDevice class.
%
%  * Find serial port of remote device connected with a USB cable.
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
% getAvailableComPorts()
% remoteDeviceBasicExample('COM5')
%

    % Create the Remote device object, open serial
    % connection and display device info.
    fprintf('Opening Remote device...\n');
    dev = RemoteDevice(port);
    dev.open();
    fprintf('Remote Device Info:');
    dev.getDevInfo()

    % Pause for a little bit for added dramma
    pause(1.0)

    % Print dynamic methods
    dev.getMethods()
    fprintf('\n');

    % Clean up -
    dev.close();
    delete(dev);
    fprintf('Closed device. Goodbye!\n');
end
