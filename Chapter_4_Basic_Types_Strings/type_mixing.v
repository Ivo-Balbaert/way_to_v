// does not compile!
fn main() {
	a := u32(15)
	mut b := i8(0)
  //	b = a + a  // error: cannot use type `u32` as type `i8` in assignment 
	n := i16(34)
	mut m := i32(0)
	m = n // error: cannot use type `i16` as type `i32` in assignment
}
 