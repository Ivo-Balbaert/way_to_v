// http://rosettacode.org/wiki/Queue/Definition


const (
	MaxDepth = 256
)

struct Queue {
mut:
	data  []f32=[f32(0)].repeat(MaxDepth)
	depth int=0
	head  int=0
}

fn (q mut Queue) enqueue(v f32) {
	if q.depth >= MaxDepth || q.depth < q.head {
		return
	}
	println('Enqueue: ${v : 3.2f}')
	q.data[q.depth] = v
	q.depth++
}

fn (q mut Queue) dequeue() ?f32 {
	if q.depth > 0 && q.head < q.depth {
		result := q.data[q.head]
		q.head++
		println('Dequeue: top of Queue was ${result :3.2f}')
		return result
	}
	return error('Queue Underflow!!')
}

fn (q Queue) peek() ?f32 {
	if q.depth > 0 && q.head < q.depth {
		result := q.data[q.head]
		println('Peek: top of Queue is ${result :3.2f}')
		return result
	}
	return error('Out of Bounds...')
}

fn (q Queue) empty() bool {
	return q.depth == 0
}

fn main() {
	mut queue := Queue{}
	println('Queue is empty? ' + if queue.empty() { 'Yes' } else { 'No' })
	queue.enqueue(5.0)
	queue.enqueue(4.2)
	println('Queue is empty? ' + if queue.empty() { 'Yes' } else { 'No' })
	queue.peek() or {
		print('error')
		return
	}
	queue.dequeue() or {
		print('error')
		return
	}
	queue.dequeue() or {
		print('error')
		return
	}
	queue.enqueue(1.2)
}
