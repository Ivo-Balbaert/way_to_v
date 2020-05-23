struct Thing {
    i int
    j int
}
struct Something {
    k int
    l Thing
}

fn main() {
    x := Thing{
        i: 2,
        j: 3
    }
    y := Something {
        k: 1,
        l: x
    }
    println(y)
}

/*
Something {
    k: 1
    l: Thing {
        i: 2
        j: 3
    }
}
*/