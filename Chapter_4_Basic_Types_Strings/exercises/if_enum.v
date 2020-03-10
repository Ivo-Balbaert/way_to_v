enum Color {
    red
    green
    blue
}

fn is_red(c Color) bool {
    return match c {
        .red { true }
        else { false }
    }
}

fn main() {
    my_color := Color.red
    
    println(is_red(my_color))             // => true
    println(is_red(.green))               // => false
}