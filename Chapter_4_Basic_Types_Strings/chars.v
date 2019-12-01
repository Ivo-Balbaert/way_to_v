fn char_example() {
    a_char := `a`
    println('The ascii value of this char is: $a_char') // => The ascii value of this char is: 97
    println('The char is: ${a_char.str()}') // => The char is: a

    mut concat := 'b' + a_char.str() + 'dnews be' + a_char.str() + 'rs'
    print(concat) // => badnews bears
    
    // use += to append to a string
    concat += '_appended'
    println(', $concat') // => , badnews bears_appended
}

char_example()
