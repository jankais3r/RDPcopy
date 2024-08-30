# RDPcopy
Copy files via RDP clipboard sync.

These two scripts let you copy files over RDP connection even when the 'Do not allow drive redirection' policy is enabled. This policy makes it impossible to natively copy and paste files from the remote system to the host system.

## How-to (.html):
1. Open encode.html on your remote system and drag&drop a file into the drop area
2. Open decode.html on your local system and paste from clipboard into the text box
3. ???
4. Profit

![Browser demo](demo.gif)

## How-to (.bat):
0. Make sure that `certutil -decode` does not trigger your EDR
1. Drag the file onto encode.bat on the remote system
2. Run decode.bat on the local system
3. ???
4. Profit

![Batch demo](https://i.imgur.com/ZBoQIwd.gif)
