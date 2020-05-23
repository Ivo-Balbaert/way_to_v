struct Foo {
mut:
    a []&Bar
}

struct Bar {
    b int
}

fn main() {
    mut f := Foo{}
    f.a = [&Bar{}].repeat(10)
    for i, x in f.a {
        println("$i => $x")
    }
}

/*
0 => &Bar {
    b: 0
}
1 => &Bar {
    b: 0
}
2 => &Bar {
    b: 0
}
3 => &Bar {
    b: 0
}
4 => &Bar {
    b: 0
}
5 => &Bar {
    b: 0
}
6 => &Bar {
    b: 0
}
7 => &Bar {
    b: 0
}
8 => &Bar {
    b: 0
}
9 => &Bar {
    b: 0
}
*/