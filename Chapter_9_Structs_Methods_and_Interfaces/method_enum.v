enum Format {
    undefined
    a
    rgb
    rgba
}

fn (format Format) bytes_per_pixel() int {
    if format == .a {
        return 1
    } else if format == .rgb {
        return 3
    } else if format == .rgba {
        return 4
    } else {
        panic('can\'t derive bpp from format $format')
    }
}

fn main() {
	v := Format.a
	println(v.bytes_per_pixel())  // => 1
}