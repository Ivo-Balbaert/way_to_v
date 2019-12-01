// Windows Nov 16
/*
os_exec.v:10:34: unhandled sprintf format "?os.Result" 
    8| 
    9|     hostname:=os.exec('hostname')
   10|     println('Hostname:${hostname}')
   */
import os

fn main()
{
    //get the type of os
    ostype:=os.user_os()
    println('OsType: $ostype') // => OSType: windows

/*
    hostname:=os.exec('hostname') // .vrepl_temp.v:3:28: unhandled option type: `?os.Result`
    println('Hostname:$hostname')
*/ 

    //get home dir of current user
    home:=os.home_dir()
    println('HomeDir: $home') // => C:\Users\CVO\

    //get the current executable file path.
    exepath:=os.executable()
    println('ExePath: $exepath') // => ExePath: e:\Vlang\The_Way_to_V\Chapter_13_Standard_Library_vlib\os_exec.exe

    pwd:=os.getwd()
    println('CurrentDir:$pwd')
}

/* Output: Windows
OsType: windows
HomeDir: C:\Users\CVO\
ExePath: e:\Vlang\The_Way_to_V\Chapter_13_Standard_Library_vlib\os_exec.exe
CurrentDir:e:\Vlang\The_Way_to_V\Chapter_13_Standard_Library_vlib
*/