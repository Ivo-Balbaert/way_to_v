fn print_logic(a, b bool) {
	print('a and b = ')
	println(a && b)

	print('a or b = ')
	println(a || b)

	print('not a = ')
	println(!a)
}

print_logic(true, false)

/*
a and b = false
a or b = true
not a = false
*/