# (VR) Replay Buffer Button for OBS

This little tool let's you start and save the obs replay buffer with just a button. This button was originally developed/intended to be placed inside vr(for example on your arm) with the help of xsoverlay or similar, but it's use is not limited to desktop/phone use either since it's just a simple html page.

![Example screenshot showing the window inside vr](https://cdn.lebaston100.de/git/vr-obs-replaybufferbutton/image1.jpg)

## Requirements

- OBS >= 29 with enabled replay buffer and websocket

## Simple (Automated) Setup

This only works if you are not running a portable obs instance.
- [Download this repository](https://github.com/lebaston100/vr-obs-replaybufferbutton/archive/master.zip) and extract it
- Open OBS, under "Tools" -> "WebSocket Server Settings" check "Enable WebSocket server" and hit "ok"
- Run the "setup.bat" by double clicking it (This updates the websocket port/password and downloads the stand-alone browser tool)

## Usage

- To open the button in your web browser, just double click the controller.html file
- To open the button in a dedicated window without the need for your browser running, double click the "launch-elecap.bat" or "launch-elecap-on-top.bat"(window will stay above active applications) file. You might not see something happening for a few seconds after opening while the application loads.
- Once open the button will try to connect to obs and might display an error message if it's not already running until you launch it.

Behaviour:

- The button always scales to 100% width and height of the window
- If the replay buffer is not running, the button's background is white and text shows "start"
- If the replay buffer is recording, the buttons's background is red and text shows "save"
- Once obs reports that it's saved the replay buffer, the button blinks green -> red twice and text shows "saved"
- Clicking the button while the replay buffer is inactive starts the replay buffer in obs (starts the recording to ram)
- Clicking the button while the replay buffer is recording triggers a replay buffer save (dump ram recording to disk)
- If "avoidClipOverlays" in the controller.html file was set to "true"(default "false"), pressing save while the last clip save was triggered less then the configured replay buffer time ago will block the save (available to avoid overlapping clips)

### Manual Setup

- [Download this repository](https://github.com/lebaston100/vr-obs-replaybufferbutton/archive/master.zip) and extract it
- Download the [latest electron capture](https://github.com/steveseguin/electroncapture/releases/latest/download/elecap_win_portable.zip) portable version and exctract the elecap.exe into the "vr-obs-replaybufferbutton" folder you created before
- Open OBS, under "Tools" -> "WebSocket Server Settings" check "Enable WebSocket server"
- Click the "Show Connect Info" button and copy the "Server Password"
- If the "Server Port" is not 4455, make note of the new port
- Click "OK" to close the "WebSocket Server Settings"
- Open the "controller.html" file with a text editor
	- Replace YourPasswordHERE in line 14 with the websocket password you copied earlier
	- If the port was changed, edit the port in line 11
	- If you want to run the button on a different pc then obs is running on, you can also set the ip of the obs machine here in line 11

### Help

You have trouble setting it up or found a bug, open a github issue or join my [Discord Server](https://go.lebaston100.de/discord)

This code is largely based on my own [obsFilterMonitor](https://github.com/lebaston100/obsFilterMonitor)