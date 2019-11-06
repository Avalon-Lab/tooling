
I_Icon = C:\PATH_TO_THIS_REPO\akh_scripts\show_my_console\terminal.ico
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%
;return

previous_active := ""

SC029::
if WinExist("ahk_exe WindowsTerminal.exe") {
    if WinActive("ahk_exe WindowsTerminal.exe") {
        WinMinimize, ahk_exe WindowsTerminal.exe
        if (previous_active) {
            WinActivate, ahk_id %previous_active%
        }
    } else {
        previous_active := WinExist("A")
        WinActivate, ahk_exe WindowsTerminal.exe
    }
} else{
    previous_active := WinExist("A")
    run, C:\PATH_TO_THIS_REPO\akh_scripts\show_my_console\terminal_shortcut
}
return

+SC029::
Send ²
return

^SC029::
MsgBox, exiting!
ExitApp
