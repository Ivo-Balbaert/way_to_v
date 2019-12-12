struct S1 { 
mut:
	i int 
}

fn main() {
	mut p1 := &S1{} 		// type: *S1
	p1.i++ 
  mut p2 := p1				// type: mut(*)S ??
	s1 := S1{}
	p2 = &s1
	p2.i++ 
	println(s1)
	s2 := S1{}
	p2 = &s2		
	mut p3 := &s2				// type: *mut(S) ??
	p3.i++
	mut p4 := &s2
	p4.i++
	println(s2)
}

/* Output:
{
	i: 1
}
{
	i: 2
}
*/