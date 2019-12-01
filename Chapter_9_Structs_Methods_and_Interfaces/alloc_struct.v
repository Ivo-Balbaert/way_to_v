struct Aex {
	id int
}

fn new_aex() Aex {
	return Aex{}			// allocated on the stack
	// return &Aex{}	// does a heap allocation
}

a := Aex{}
b := new_aex()	
