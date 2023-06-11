Start-BitsTransfer -Source "https://github.com/steveseguin/electroncapture/releases/latest/download/elecap_win_portable.zip" -Destination elecap.zip
Expand-Archive -Force -Path elecap.zip -DestinationPath .
Remove-Item elecap.zip