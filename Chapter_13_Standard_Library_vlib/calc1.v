import os

fn add(left, right f32) f32 {
    return left + right
}

fn sub(left, right f32) f32 {
    return left - right
}

fn mul(left, right f32) f32 {
    return left * right
}

fn div(left, right f32) f32 {
    return left / right
}

// println(add(1, 2)) // 3.000000
// println(sub(1, 2)) // -1.000000
// println(mul(1, 2)) // 2.000000
// println(div(1, 2)) // 0.500000
// println(os.args) // ["calc"]

fn main() {
	// RPN stack
	mut stack := []f32
	prioritized := ["mul", "div"]
	normal := ["add", "sub"]

	for idx, value in os.args {
			if idx == 0 {
					continue
			}

			if (value in prioritized || value in normal) {
					if stack.len < 2 {
							panic("No values to use for operator $value")
					} else {
							right := stack[stack.len - 1]
							stack.delete(stack.len - 1)

							left := stack[stack.len - 1]
							stack.delete(stack.len - 1)

							if value == "add" {
									println(add(left, right))
							} else if value == "sub" {
									println(sub(left, right))
							} else if value == "mul" {
									println(mul(left, right))
							} else if value == "div" {
									println(div(left, right))
							} else {
									println("$left $value $right")
									println(stack)
									panic("This should not happen!")
							}
							continue
					}
			}

			if !(value in prioritized || value in normal) {
					stack << value.f32()
			}
	}
}