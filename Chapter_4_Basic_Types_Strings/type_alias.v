type Integer i64
type Float f64

fn (i Integer) name() {
  println("Integer: $i")
}

fn (f Float) name() {
  println("Float: $f")
}

fn (i Integer) str() string {
  return "${int(i)}"
}

fn (f Float) str() string {
   return "${f64(f)}"
}

fn main() {
  i := Integer(42)
  i.name()          // => Integer: 42
  println(i)        // => 42
  f := Float(3.14)
  f.name()          // => Float: 3.14
  println(f)        // => 3.14
}