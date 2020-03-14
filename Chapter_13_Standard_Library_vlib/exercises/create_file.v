// Write a V program to create a new file with content
import os

fn main() {
	file_name := 'test.txt'
  content := 'testing file writing!\nhello!'
  os.write_file(file_name, content)
}