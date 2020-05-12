struct Object {
}

struct Arg {
}

fn (this Object) varg(arg &Arg, args... f32) {
	println(args.len)
}

fn main() {
	obj := Object{}
	obj.varg(Arg{})
	obj.varg(Arg{}, 3.0, 4.2)
}

/*
0
2
*/