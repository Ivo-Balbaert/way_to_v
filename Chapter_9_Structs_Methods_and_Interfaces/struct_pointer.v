struct Sptr {
  data int
  ptr  &int
}

fn main() {
  s1 := Sptr{}
  s2 := Sptr{data: 5}
  println(s1)
  println(s2)
}

/* Output:
{
	data: 0
	ptr: 0000000000000000
}
{
	data: 5
	ptr: 0000000000000000
}
*/
