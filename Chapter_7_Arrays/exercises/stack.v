
fn main() {
    mut stack := []f32

    // push
    stack << 1.2
    stack << 2.2
    stack << 3.2

    // print the array and its length
    println(stack) // => [1.200000, 2.200000, 3.200000]
    println(stack.len) // => 3

    // pop last item
    temp := stack[stack.len - 1]
    stack.delete(stack.len - 1)

    // print the array and the popped item
    println(stack) // [1.200000, 2.200000]
    println(temp) // 3.200000
}
