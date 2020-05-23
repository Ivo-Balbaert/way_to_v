fn main() { 
	// areas := ['game', 'web', "\\'", 'systems', 'GUI', 'mobile']
  areas := ['game', 'web', r'\'', 'systems', 'GUI', 'mobile']
        for _, area in areas {
                println('Hello, $area developers!')
        }
}

/*
Hello, game developers!
Hello, web developers!
Hello, \' developers!
Hello, systems developers!
Hello, GUI developers!
Hello, mobile developers!
*/