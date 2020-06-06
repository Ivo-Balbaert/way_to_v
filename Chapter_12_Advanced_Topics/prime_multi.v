fn multiple_thread(i int, mut list []bool) {
    total := 100
    for j := i * 2; j < total; j += i{
        list[j] = false
    }
}
 
fn main(){
    total := 100
    mut list := []bool{}
    for i := 0; i < total; i++{
        list << true
    }
    list[0] = false
    list[1] = false
    mut primes := [0,1]
   
    for i, index in list{
        if index == false{
            continue
        }
        if index == true{
            primes << i
            println(i)
            go multiple_thread(i, &list)
        }
    }
    // println(primes)
}