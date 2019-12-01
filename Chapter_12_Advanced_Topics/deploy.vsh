fn main() {
	rm('build/*') 
	// Same as:  
	for file in ls('build/') {
		rm(file) 
	} 

	mv('*.v', 'build/') 
	// Same as:  
	for file in ls('.') {
		if file.ends_with('.v') { 
			mv(file, 'build/') 
		} 
	} 
}

/*
[Running] v run deploy.vsh
new_parser: V script
["strings", "strconv"]
["c:\v\vlib\builtin\array.v", "c:\v\vlib\builtin\builtin.v", "c:\v\vlib\builtin\float.v", "c:\v\vlib\builtin\hashmap.v", "c:\v\vlib\builtin\int.v", "c:\v\vlib\builtin\map.v", "c:\v\vlib\builtin\option.v", "c:\v\vlib\builtin\string.v", "c:\v\vlib\builtin\utf8.v"]
got v script
trying replace main__rm
trying replace main__ls
trying replace main__rm
deploy.vsh:4:27: unhandled option type: `?[]string`
    2| 	rm('build/*') 
    3| 	// Same as:  
    4| 	for file in ls('build/') {
             	                   ^
    5| 		rm(file) 
    6| 	} 

[Done] exited with code=1 in 0.198 seconds

*/