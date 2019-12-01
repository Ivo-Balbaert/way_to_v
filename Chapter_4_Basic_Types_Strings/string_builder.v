import strings

fn main() {
    // 1million * 12 byte -> a line is (line word, space, middle_number_of_chars)
    mut builder := strings.new_builder(12000000)
    for i in 0..1000000 {
        builder.write('line $i\n')
    }
		print(builder.str())
}
