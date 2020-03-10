struct Animal {
    species string
    has_fur	bool
}

fn main() {
    ali := Animal {
        species: 'alligator'
        has_fur: false
    }
		bob := Animal {
        species: 'dog'
        has_fur: true
    }
    println(ali.has_fur)         // => false
		println(bob.has_fur)         // => true
}