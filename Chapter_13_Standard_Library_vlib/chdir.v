import os

fn main() {
  println('[+] change directory to temp folder....') 
  os.chdir(os.getenv('TEMP'))
  println(os.getenv('TEMP'))  // => C:\Users\CVO\AppData\Local\Temp
}