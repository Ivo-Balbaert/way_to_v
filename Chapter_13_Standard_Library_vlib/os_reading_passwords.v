import os

fn main() {
    passwd := os.read_file('/etc/passwd') or {
        panic('Failed to open file')
        return
    }

    for line in passwd.split('\n') {
        println(line)
        for part in line.split(':') {
            println('PART: $part')
        }
        println('')
    }
}