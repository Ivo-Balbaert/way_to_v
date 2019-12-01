import (
	rand
  time
)

fn main() {
	rand.seed(time.now().uni)

	for _ in 0..10 {
		println('${rand.next(255)}.${rand.next(255)}.${rand.next(255)}.${rand.next(255)}')
	}
}

/* Output:
60.188.170.141
113.78.59.121
87.71.87.7
69.27.231.62
35.27.206.65
178.221.12.147
181.21.138.11
89.189.10.49
34.133.12.204
205.213.77.234
*/