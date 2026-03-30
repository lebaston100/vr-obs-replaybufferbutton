Start-BitsTransfer -Source "https://github.com/steveseguin/electroncapture/releases/download/v2.23.2/elecap_win_v2.23.2_portable.zip" -Destination elecap.zip
Expand-Archive -Force -Path elecap.zip -DestinationPath .
Remove-Item elecap.zip