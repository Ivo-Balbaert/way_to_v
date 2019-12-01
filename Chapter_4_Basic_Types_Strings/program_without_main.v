// module main   // is implicit
// c := 7 		   // error: redefinition of `c`

fn ret_ints() (int, int) {
	return 42, 108
}

a, b := ret_ints()
println(a) // 42
println(b) // 108
