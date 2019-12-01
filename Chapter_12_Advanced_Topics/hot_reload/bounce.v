// Build this example with:  v -live bounce.v
/* Nov 20: On WIndows
build ok:
E:\Vlang\The_Way_to_V\Chapter_12_Advanced_Topics\hot_reload>v -live bounce.v
warning: bounce.v:2:6: the following imports were never used:
 * gx
c:\v\thirdparty\glad\glad.o not found, building it...

compiling shared library took 4156 ms
=========


E:\Vlang\The_Way_to_V\Chapter_12_Advanced_Topics\hot_reload>bounce
create window wnd=0000000003AB7AD0 ptr==0000000000FBE290
#version 330 core
layout (location = 0) in vec4 vertex; // <vec2 pos, vec2 tex>
out vec2 TexCoords;

uniform mat4 projection;

void main()
{
    gl_Position = projection * vec4(vertex.xy, 0.0, 1.0);
    TexCoords = vertex.zw;
}
Starting the game loop...
--> A window appears for a few s, but nothing is drawn and the window disappears
Problem is in the draw function, if // background window stays
*/



module main // ?? not needed

import gx
import gl
import gg
import glfw
import time

const (
	width = 50
)

struct Game {
mut:
	gg       &gg.GG
	x        int
	y        int
	dy       int
	dx       int
	height   int
	width    int
	main_wnd &glfw.Window
	draw_fn  voidptr
}

fn main() {
	glfw.init_glfw()
	width := 600
	height := 300
	mut game := &Game{
		gg: 0
		dx: 2
		dy: 2
		height: height
		width: width
	}
	window := glfw.create_window(glfw.WinCfg {
		width: width
		height: height
		borderless: false
		title: 'Hot code reloading demo'
		ptr: game
		always_on_top: true
	})
	//window.onkeydown(key_down)
	game.main_wnd = window
	window.make_context_current()
	gg.init_gg()
	game.gg = gg.new_context(gg.Cfg {
		width: width
		height: height
		font_size: 20
		use_ortho: true
	})
	println('Starting the game loop...')
	go game.run()
	for {
		gl.clear()
		gl.clear_color(255, 255, 255, 255)
		game.draw()
		window.swap_buffers()
		glfw.wait_events()
	}
}

[live]
fn (game &Game) draw() {
	game.gg.draw_rect(game.x, game.y, width, width, gx.rgb(255, 0, 0))
}

fn (game mut Game) run() {
	for {
		game.x += game.dx
		game.y += game.dy
		if game.y >= game.height - width || game.y <= 0 {
			game.dy = - game.dy
		}
		if game.x >= game.width - width || game.x <= 0 {
			game.dx = - game.dx
		}
		// Refresh
		time.sleep_ms(17)
		glfw.post_empty_event()
	}
}
