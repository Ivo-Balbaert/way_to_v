fn main() {
        x := 3.14
        bits := (*u32)(&x)
        println(bits)
}
// 000000000062FE2C