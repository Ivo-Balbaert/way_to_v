// Jul 17: doesn't yet run on Windows
os := 'windows' 
print('V is running on ')
match os {
	'darwin' => println('macOS.')
	'linux' => println('Linux.')
	else => println(os) 
}