import os

fn run(cmd string) {   	
	if os.system(cmd) != 0 {
  	panic('"$cmd" failed')
  }
}

// on Windows
run('dir')

/* Output:
Directory of e:\Vlang\The_Way_to_V\Chapter_13_Standard_Library_vlib

11/14/2019  02:20 PM    <DIR>          .
11/14/2019  02:20 PM    <DIR>          ..
11/14/2019  01:38 PM           127,678 .vrepl_temp
11/14/2019  01:38 PM                51 .vrepl_temp.v
11/14/2019  12:24 PM                 0 a.out.tmp.c
11/14/2019  12:34 PM               263 bare.v
11/14/2019  01:31 PM           167,349 guessing_game.exe
11/14/2019  01:47 PM             1,945 guessing_game.v
07/19/2019  10:12 AM               497 json.v
07/15/2019  01:31 PM               629 json2.v
11/14/2019  12:00 PM           154,165 os_args.exe
11/04/2019  03:10 PM               265 os_args.v
11/14/2019  12:17 PM           154,165 os_examples.exe
11/14/2019  12:17 PM               180 os_examples.v
11/14/2019  02:20 PM           154,164 os_exec.exe
11/14/2019  02:20 PM                99 os_exec.v
11/14/2019  02:08 PM           154,165 os_exit.exe
11/14/2019  02:08 PM            71,326 os_exit.tmp.c
06/28/2019  03:30 PM               134 os_get_line.v
11/14/2019  02:11 PM               992 os_props.v
07/02/2019  08:28 AM               298 os_reading_passwords.v
11/14/2019  11:17 AM           154,391 runtime.exe
11/14/2019  11:17 AM                48 runtime.v
07/15/2019  01:29 PM               576 weblate-memory.json
              22 File(s)      1,143,380 bytes
               2 Dir(s)  829,934,981,120 bytes free
*/

run('copy a b') // => The system cannot find the file specified.

// on nix*:
os.ls('pwd')
