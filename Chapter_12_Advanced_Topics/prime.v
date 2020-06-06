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
        //println(i)
        if index == false{
            continue
        }
        if index == true{
            primes << i
            for j := i * 2; j < total; j += i{
                list[j] = false
            }
        }
    }
    println(primes)
}