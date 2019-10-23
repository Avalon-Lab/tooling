# Show my console

A simple script to open/show a terminal in one keystroke on windows.
By default it works for windows [new terminal app](https://www.microsoft.com/fr-fr/p/windows-terminal-preview/9n0dx20hk701) 

## Setup

* edit terminal.akh to use correct path
* edit terminal_shortcut : 
    * `explorer.exe shell:appsFolder` 
    * create shortcut for app
    * move shortcut in this folder
    * rename it to match shortcut name in akh script (terminal_shortcut by default)
* automatic startup :
    * open  `%AppData%\Microsoft\Windows\Start Menu\Programs\Startup`
    * create a link to ahk script in that folder

## Usage
* press `²`, terminal will show up
* press again, it will minimize
* `ctrl + ²` will exit the script

## Configuration

* key bind to open app : 
    * change `SC029` to match your desired key (see [ahk doc](https://www.autohotkey.com/docs/KeyList.htm#keyboard))

* terminal app : TODO