//module main
import (
	time
	vweb
)

struct App {
mut:
	vweb vweb.Context
}

pub fn (app &App) init() {}

fn (app mut App) index() {
	app.vweb.text('Hello, world from vweb!')
}

fn (app mut App) time() {
	app.vweb.text(time.now().format())
}

fn main() {
	app := App{}
	vweb.run(mut app, 8080)
}
