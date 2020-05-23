struct Data {
  field int
}

const (
  x = Data{1}
  y = Data{2}
)

fn main() {
  a := [x, y]
  println(a[1].field) // => 2
}