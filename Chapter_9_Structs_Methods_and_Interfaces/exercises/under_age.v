struct Person {
    name string
    age int
}

fn (p Person) is_under_age() bool {
    return p.age < 21
}

fn main() {
    bob := Person {
        name: 'Bob'
        age: 17
    }
    println(bob.is_under_age())         // => true
}