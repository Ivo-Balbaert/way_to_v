struct Person {
mut:
        first_name string
        last_name  string
}

fn (p mut Person) up_person() {
        p.first_name = p.first_name.to_upper()
        p.last_name = p.last_name.to_upper()
}

// 1- struct as a value type:
mut pers1 := Person{}
pers1.first_name = 'Chris'
pers1.last_name = 'Woodward'
pers1.up_person()
println('The name of the person is $pers1.first_name $pers1.last_name')
println(pers1)
/*
{
	first_name: CHRIS
	last_name: WOODWARD
}
*/
// 2 - struct as a literal, created on the stack:
mut pers2 := Person{first_name: 'Chris', last_name: 'Woodward'}
pers2.up_person()
println('The name of the person is $pers2.first_name $pers2.last_name')
// 3 - struct as a literal, created on the heap:
mut pers3 := &Person{first_name: 'Chris', last_name: 'Woodward'}
pers3.up_person()
println('The name of the person is $pers3.first_name $pers3.last_name')
println(pers3) // 0000000000B980F0

/* Output:
The name of the person is CHRIS WOODWARD
The name of the person is CHRIS WOODWARD
The name of the person is CHRIS WOODWARD
*/
