// This cannot work:
/*
part_pure.v:6 mutable arguments are only allowed for arrays, maps, and structs.
return values instead: `foo(n mut int)` => `foo(n int) int`

fn non_pure (a mut int) int { 
        b := a * 5
        return b
}

n := non_pure(10)
println(n)

*/

// This works:
fn non_pure (a int) int { 
        b := a * 5
        return b
}

n := non_pure(10)
println(n) // => 50
