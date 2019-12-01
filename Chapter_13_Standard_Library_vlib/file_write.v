import os

fn test_file_creation() {
    file_name := './new_file.txt'
    content := 'text'
    os.write_file(file_name, content)
    assert content.len == os.file_size(file_name)
    os.rm(file_name)
}

test_file_creation()