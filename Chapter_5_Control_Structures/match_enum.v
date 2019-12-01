enum Animal {
    cat
    dog
    goldfish
    pig
}

fn makes_miau(a Animal) bool {
    return match a {
        .cat { true }
        else { false }
    }
}

fn is_land_creature(a Animal) bool {
    return match a {
        .cat { true }
        .dog { true }
        .pig { true }
        else {
            false
        }
    }
}
// or like this:
fn is_land_creature_alt(a Animal) bool {
    return match a {
        .goldfish { false }
        else {
            true
        }
    }
}

fn main() {
	cat1 := Animal.cat
	gf := Animal.goldfish
	println(makes_miau(cat1)) // true
	println(is_land_creature(cat1)) // true
	println(is_land_creature_alt(gf)) // false
}