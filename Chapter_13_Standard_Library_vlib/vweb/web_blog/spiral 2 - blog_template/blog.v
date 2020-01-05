import vweb

struct App {
mut:
	vweb vweb.Context
  cnt int
}

pub fn (app &App) init() {}

fn (app mut App) index() {
	app.cnt++
	message := 'Hello, world from Vweb!'
	$vweb.html()
}

fn main() {
	app := App{}
	vweb.run(mut app, 8080)
}
