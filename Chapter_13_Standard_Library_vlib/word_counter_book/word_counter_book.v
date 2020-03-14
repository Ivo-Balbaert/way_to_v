import os

struct Mode {
    name string
    cli_args []string
    sep []string
}

const (
    words = Mode{name: "words", cli_args: ["-w", "--words"], sep: [" ", "\n"]}
    lines = Mode{cli_args: ["-l", "--lines"], name: "lines", sep: ["\n"]}
    chars = Mode{name: "chars", cli_args: ["-c", "--chars"], sep: [""]}
)

fn parse_mode(args []string) Mode {
    mut mode := Mode{}

    if args[1] in words.cli_args {
        mode = words
    } else if args[1] in lines.cli_args {
        mode = lines
    } else if args[1] in chars.cli_args {
        mode = chars
    }
    return mode
}

fn count(mode Mode, path string) int {
    mut result := 0

    if !os.exists(path) {
        result = -1
        return result
    }

    content := os.read_file(path) or {return result}
    for item in content {
        if "" in mode.sep || item.str() in mode.sep {
            result++
        }
    }
    return result
}


fn main() {
	// if os.args.len < 3 { 
	// 		println('Usage word_counter_book -mode file1 file2')
	// 		return
	// 	}
    // counting one file:
    mode := parse_mode(os.args)
    file := os.args[2]
    println(count(mode, file))

	// counting multiple files:
	// for i := 2; i < os.args.len; i++ {
	// 	file := os.args[i]
	// 	print('File $file contains ')
    // 	print(count(mode, file))
	// 	println(' $mode.name')	
	// }
}

/* Output:
E:\Vlang\tutorials\the book of V>word_counter_book -w words.txt
49

E:\Vlang\tutorials\the book of V>word_counter_book -l words.txt
49

E:\Vlang\tutorials\the book of V>word_counter_book -c words.txt
435
*/