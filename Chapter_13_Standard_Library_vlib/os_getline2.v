import os

fn main() {
	os.clear()

	print('Type your message: ')
	message := os.get_line()

	println('Your message is: $message')
	println('Your message has $message.len characters')	
}

/*
Type your message: Hi how is it ?
Your message is: Hi how is it ?
Your message has 14 characters
*/