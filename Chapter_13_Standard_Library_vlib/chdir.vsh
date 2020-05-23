fn main() {
  println('[+] change directory to temp folder....') 
  chdir(getenv('TEMP'))
  println(getenv('TEMP'))  // => C:\Users\CVO\AppData\Local\Temp
}