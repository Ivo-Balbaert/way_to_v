// http://rosettacode.org/wiki/Stack


const (
	MaxDepth = 256
)

struct Stack {
mut:
	data  []f32=[f32(0)].repeat(MaxDepth)
	depth int=0
}

fn (s mut Stack) push(v f32) {
	if s.depth >= MaxDepth {
		return
	}
	println('Push: ${v : 3.2f}')
	s.data[s.depth] = v
	s.depth++
}

fn (s mut Stack) pop() ?f32 {
	if s.depth > 0 {
		s.depth--
		result := s.data[s.depth]
		println('Pop: top of stack was ${result :3.2f}')
		return result
	}
	return error('Stack Underflow!!')
}

fn (s Stack) peek() ?f32 {
	if s.depth > 0 {
		result := s.data[s.depth - 1]
		println('Peek: top of stack is ${result :3.2f}')
		return result
	}
	return error('Out of Bounds...')
}

fn (s Stack) empty() bool {
	return s.depth == 0
}

fn main() {
	mut stack := Stack{}
	println('Stack is empty? ' + if stack.empty() { 'Yes' } else { 'No' })
	stack.push(5.0)
	stack.push(4.2)
	println('Stack is empty? ' + if stack.empty() { 'Yes' } else { 'No' })
	stack.peek() or {
		eprintln('error: $err')
		return
	}
	stack.pop() or {
		eprintln('error: $err')
		return
	}
	stack.pop() or {
		eprintln('error: $err')
		return
	}
}

/*
Stack is empty? Yes
Push: 5.00
Push: 4.20
Stack is empty? No
Peek: top of stack is 4.20
Pop: top of stack was 4.20
Pop: top of stack was 5.00
*/
