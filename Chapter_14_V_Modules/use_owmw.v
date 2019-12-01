import owmw 

const (
    token = '6f3e9a53f0be3733968163891bd22f5d' 
) 

fn main() { 
    w := owmw.start(token, 1)
    city := w.city_by_name('Antwerp')
    println(city.temperature())
}
