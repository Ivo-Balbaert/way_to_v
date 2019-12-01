fn main() {
	m := {'ford' : 'mustang', 'chevrolet' : 'camaro', 'dodge' : 'challenger'}
    
  y := if 'chevrolet' in m {
            'The chevrolet in the list is a ' + m['chevrolet']
        }
        else {
            'There were no chevrolets in the list :('
        }
  println(y) // The chevrolet in the list is a camaro
}