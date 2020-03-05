fn main() {
// Literal maps:
  numbers := { 
    'one': 1 
    'two': 2 
  }
  m1 := { 'foo': 'bar', 'baz': 'bar' } // , can be left out !
  println(m1['baz']) // => bar
  m10 := {'ford' : 'mustang', 'chevrolet' : 'camaro', 'dodge' : 'challenger'}
    
  mut m := map[string]int // Only maps with string keys are allowed for now  
  m['one'] = 1
  m['two'] = 2
  println(m.size) // => 2      
  
  println(m['one']) // => "1"  
  // println(m) // Nov 19: map_int` needs to have method `str() string` to be printable
  
  mut m2 := map[string]bool
  m2['test'] = true

  println(m['bad_key']) // => "0"  
  println('bad_key' in m) //=> false 
   
  println(m['two']) // => "2"  
  m.delete('two')
  println(m['two']) // => 0
  println('two' in m) // => false
  m.delete('five') // no error for non-existent key
}
