fn f() ?int {
  a := 5
  return a
}

fn main() {
  o := f() or {
    return
  }
  println(o) // -> 5
}
