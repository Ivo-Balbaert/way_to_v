fn main() {
  str := '1,2,3'
  ints := str.split(',').map(it.int())
  for i in ints { print(i) }  // => 123
}