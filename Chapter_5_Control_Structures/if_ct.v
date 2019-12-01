fn main() {
	$if windows {
		println('I run on a Windows machine') // => I run on a Windows machine  
	}  
	$if linux {
		println('I run on a Linux machine') 
	} 
	$if mac {
		println('I run on a macOS machine') 
	}
	$if debug {
		println('I am debugging')
	}
}
