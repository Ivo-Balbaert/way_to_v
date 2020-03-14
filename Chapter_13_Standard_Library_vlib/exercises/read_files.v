import os

fn main() {
	file1 := 'test.txt'
  text := os.read_file(file1) or {
    eprintln('failed to read $file1')
    return
  }
  lines := text.split_into_lines()
  for line in lines { println(line) }
  
	file2 := 'no_test.txt'
  text2 := os.read_file(file2) or {
    eprintln('failed to read $file2')
    return
  }
  for line in text2.split_into_lines() { println(line) }
}

/*
testing file writing!
hello!
failed to read no_test.txt
*/