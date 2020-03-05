struct Struct1 {
	f1  f32
	str string
mut:
	i1  int
}

fn main() {
	empty := Struct1{}
	println(empty.i1) // => 0
	println(empty.f1) // 0.000000
	println(empty.str) // => ''
	mut ms := Struct1{
		i1: 7
		f1: 3.14159
		str: 'V rules'
	}
	println(ms.i1) // => 7
	println(ms.str) // => V rules
	println(ms.f1) // => 3.141590
	println(ms)
	// change instance:
	ms.i1 = 42
	println(ms.i1) // => 42
	ms2 := &Struct1{
		i1: 10
		f1: 15.5
		str: 'Chris'
	}
	println(ms2) // => 0000000000AF6760
}
/*
0
0.000000

7
V rules
3.141590
{
	f1: 3.141590
	str: V rules
	i1: 7
}
42
0000000000AF6760
*/
