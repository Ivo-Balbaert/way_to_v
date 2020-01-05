fn do_smth(ptr &int){
  b:= *ptr    
  println('"${b}"') // "5"
}

a:=5
do_smth(&a)
