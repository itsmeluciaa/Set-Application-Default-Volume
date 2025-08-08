#Requires AutoHotkey v2.0
#SingleInstance Force    ; Prevents multiple instances of the script from running.

; Line 5 to 12 are suposed to prevent anti cheat false positives.
;@Ahk2Exe-Let Version = 3.0
;@Ahk2Exe-IgnoreBegin
;@Ahk2Exe-IgnoreEnd
;@Ahk2Exe-SetVersion %U_Version%
;@Ahk2Exe-SetName Set Application Default Volume
;@Ahk2Exe-SetDescription Set Application Default Volume
;@Ahk2Exe-Bin Unicode 64*
;@Ahk2Exe-Obey U_au, = "%A_IsUnicode%" ? 2 : 1 ; .Bin file ANSI or Unicode?

applications := Map("EscapeFromTarkov.exe", 60, "vlc.exe", 80)   ;This is where you input your own application and volume level inside the brackets, in the format: , ".exe", 10

loop 
{
    For key, value in applications                         
    {
        exists := ProcessWait(key, 0.2)                    
        if exists {
            origVol := SoundGetVolume()
            SoundSetVolume value
            ProcessWaitClose(key)
            SoundSetVolume origVol
        }
    }                                        
}