fn f() ?int {
	return error('nope')
}

x := f() or { 10 }
println(x) // => 10