import (
  automaton
  time
) 

fn print_automaton(a &automaton.Automaton){
	for y := 1; y < a.field.maxy; y++ {
		mut s := '    '
		for x := 1; x < a.field.maxx; x++ {
			cell := a.field.get(x,y)
			s += if cell == 1 { '@' } else { '.' }  // @ = alive  . = dead
		}
		println(s)
	}
	println('')
}

mut aut := automaton.gun() // initialization
for {											 // game-loop
		aut.update()					 // calculate new generation
		print_automaton(aut)   // display new generation
		time.sleep_ms(100)
}