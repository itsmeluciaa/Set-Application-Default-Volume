#Requires AutoHotkey v2.0
#SingleInstance Force

;@Ahk2Exe-Let Version = 3.0
;@Ahk2Exe-IgnoreBegin
;@Ahk2Exe-IgnoreEnd
;@Ahk2Exe-SetVersion %U_Version%
;@Ahk2Exe-SetName LuciaScript
;@Ahk2Exe-SetDescription LuciaScript
;@Ahk2Exe-Bin Unicode 64*
;@Ahk2Exe-Obey U_au, = "%A_IsUnicode%" ? 2 : 1 ; .Bin file ANSI or Unicode?
loop
    
{
    if ProcessExist("EscapeFromTarkov.exe")
    {
        origVol := SoundGetVolume()
        SoundSetVolume 60
        ProcessWaitClose("EscapeFromTarkov.exe")
        SoundSetVolume origVol
    }
    Sleep 1000 ; Prevent high CPU usage
}