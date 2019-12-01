struct Person {
	name string
	gender string
}

fn main(){
    person_1 := Person{name: 'Roger', gender: 'M'}
    person_2 := Person{name: 'Jessica', gender: 'F'}

    println(person_1)
    println(person_2)

    persons := [person_1, person_2]
    println(persons)
}

/*
{
	name: Roger
	gender: M
}
{
	name: Jessica
	gender: F
}
[{
	name: Roger
	gender: M
}, {
	name: Jessica
	gender: F
}]
*/
