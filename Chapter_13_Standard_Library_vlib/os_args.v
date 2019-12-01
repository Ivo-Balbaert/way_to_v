import os

fn main() {
    for ix, arg in os.args {
      println('$ix: $arg')                  
    }    
} 

/* When called as:  os_args A 1 Hello          This prints out:
E:\Vlang\The_Way_to_V\Chapter_9_Modules>os_args A 1 Hello
0: os_args
1: A
2: 1
3: Hello
*/