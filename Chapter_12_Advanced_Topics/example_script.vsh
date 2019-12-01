/* Nov:
example_script.vsh:23:7: unhandled option type: `?os.File`
   21|  create('foo.txt')
   22| 
   23|  foo_ls := ls('.') or { panic(err) }
             ^
   24|  println(foo_ls)
   25|  println('')
*/


fn main() {

 for _ in 0..5 {
   println('V script')
 }

 println('deploying...')

 println('Files')
 foo := ls('.') or { panic(err) }
 println(foo)

 println('')
 rm('a.out')

 println('Making dir name and creating foo.txt')
 mkdir('name')
 create('foo.txt')

 foo_ls := ls('.') or { panic(err) }
 println(foo_ls)
 println('')

 println('Entering into name')
 chdir('name')
 foo_ls2 := ls('.') or { panic(err) }
 println(foo_ls2)
 println('')

 println('Removing name and foo.txt')
 println('')
 chdir('../')
 rmdir('name')
 rm('foo.txt')

 again := ls('.') or { panic(err) }
 println(again)

}

/*
[Running] v run example_script.vsh
new_parser: V script
["strings", "strconv"]
["c:\v\vlib\builtin\array.v", "c:\v\vlib\builtin\builtin.v", "c:\v\vlib\builtin\float.v", "c:\v\vlib\builtin\hashmap.v", "c:\v\vlib\builtin\int.v", "c:\v\vlib\builtin\map.v", "c:\v\vlib\builtin\option.v", "c:\v\vlib\builtin\string.v", "c:\v\vlib\builtin\utf8.v"]
got v script
trying replace main__ls
trying replace main__rm
trying replace main__mkdir
trying replace main__create
trying replace main__ls
trying replace main__chdir
trying replace main__ls
trying replace main__chdir
trying replace main__rmdir
trying replace main__rm
trying replace main__ls
warning: example_script.vsh:4:2: the following imports were never used: 
 * os
V script
V script
V script
V script
V script
deploying...
Files
["a.out", "deploy.tmp.c", "deploy.v", "example_script.vsh", "foo.txt"]

Making dir name and creating foo.txt
["a.out", "deploy.tmp.c", "deploy.v", "example_script.vsh", "foo.txt", "name"]

Entering into name
[]

Removing name and foo.txt

["a.out", "deploy.tmp.c", "deploy.v", "example_script.vsh", "foo.txt"]

[Done] exited with code=0 in 3.602 seconds
*/