struct Color {
        r int
        g int
        b int
}

pub fn (c Color) str() string { return '{$c.r, $c.g, $c.b}' }

fn rgb(r, g, b int) Color { return Color{r: r, g: g, b: b} }

const (
        red  = Color{r: 255, g: 0, b: 0}
        blue = rgb(0, 0, 255)
)

println(red)    // => {255, 0, 0}
println(blue)   // => {0, 0, 255}