module main
import (
	pg			// (1)
	vweb
)

struct App {
mut:
	vweb vweb.Context
  db   pg.DB
}

pub fn (app mut App) init() {   // (2) mut App ipv &App
db := pg.connect(pg.Config{
		host:   '127.0.0.1'
		dbname: 'blog'
		user:   'postgress'
	}) or { panic(err) }
	app.db = db
}

fn (app App) index() {
	articles := app.find_all_articles()
	$vweb.html()
}

fn main() {
	app := App{}
	vweb.run(mut app, 8080)
}
