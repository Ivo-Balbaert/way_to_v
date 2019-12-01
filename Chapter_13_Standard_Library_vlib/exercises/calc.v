// E:\Vlang\tutorials\the book of V>calc 1 2 add 3 4 5 add div mul
// [1.000000]
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
                    stack << add(left, right)
                } else if value == "sub" {
                    stack << sub(left, right)
                } else if value == "mul" {
                    stack << mul(left, right)
                } else if value == "div" {
                    stack << div(left, right)
                } else {
                    println("$left $value $right")
                    println(stack)
                    panic("This should not happen!")
                }

                if idx == os.args.len - 1 {
                    println(stack)
                    exit(0)
                } 
            }
        }

        if !(value in prioritized || value in normal) {
            stack << value.f32()
        }
    }
}