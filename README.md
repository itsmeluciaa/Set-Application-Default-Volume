
# Set Application Default Volume

This is an AutoHotkey script that lets you automaticaly sets a specific system volume once you launch your games.

Have you ever encountered the frustration of having to manually adjust your system volume when switching between different applications or games? This script is designed to enhance your quality of life by automating this process.

The script allows you to set a default system volume for any specific application or game. For example, if your normal system volume is set at 50%, you can configure the script to automatically adjust the volume to a predefined percentage when you launch a game. Once you close the game, the script will restore your system volume to its original level of 50%.

This automation ensures that you no longer have to worry about adjusting the volume manually, making your transitions between applications smoother and more efficient.


## How To Use
1. Download the script and open it in Visual Studio.
2. Edit the 14th line according to the instructions. The EscapeFromTarkov.exe part is the example.
3. Save the script.
4. You can now test if you did everything correctly by double clicking the script and then launching a game.
5. You can now go download the AutoHotkey to exe compiler from: https://github.com/AutoHotkey/Ahk2Exe
6. Run Ahk2Exe and compile your script to a x64 .exe.
7. You can now set this .exe as a startup application, so you never have to worry about it not running. You do this by pasting the .exe into :
## Disclamer
Please note that even tho there is code to prevent false anti cheat flags, some games might not like seeing your script running.

Altho the only game that ever asked me to close the script was Battlefield 6, i still wanted to mention this.

Also please note that running two applications, that you mention in the script, at the same time, might cause issues because it wont know which volume to use.
