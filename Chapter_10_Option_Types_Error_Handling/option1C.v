fn f() ?string {
	return error('nope')
}

fn report_error(s string) {
	println(s)
}

x := f() or {
	report_error('Error being reported')
	' '
}

println('***' + x + '***') // => *** ***