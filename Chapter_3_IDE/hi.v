fn main() {
        for i := 0; i < 3; i++ {
                println('Hello from V.js')
        }
}

// Windows:
V.js compiler not found, building...
c:\v\v.exejs.tmp.c: In function 'os__ls':
c:\v\v.exejs.tmp.c:8013:42: error: dereferencing pointer to incomplete type 'struct dirent'
 string name= tos_clone ( ((byteptr)( ent ->d_name ) ) ) ;
       ...
(Use `v -g` to print the entire error message)

V error: C error. This should never happen.
Please create a GitHub issue: https://github.com/vlang/v/issues/new/choose
Failed.
*/