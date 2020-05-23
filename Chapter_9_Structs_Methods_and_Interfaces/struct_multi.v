struct Matrix {
mut:
  data [][]f64
}

fn (c mut Matrix) assign(x int, y int, v f64) {
  c.data[x][y] = v
}

fn (c Matrix) getxy(x int, y int) f64 {
  return c.data[x][y]
}