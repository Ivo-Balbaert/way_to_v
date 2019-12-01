struct Employee {
mut:
    salary f32
}

// a method which will add a specified percent to an employees salary
fn (emp mut Employee) give_raise(pct f32) {
	emp.salary += emp.salary * pct
}

// create an employee instance
mut e := Employee{}
e.salary = 100.000
println('Employee earns $e.salary$')
// call our method
e.give_raise(0.04)
println('Employee now makes $e.salary$')

/*
Employee earns 100.000000$
Employee now makes 104.000000$
*/