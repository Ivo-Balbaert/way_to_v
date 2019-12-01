/* Nov 20: On Windows: same as bounce.v)
E:\Vlang\The_Way_to_V\Chapter_12_Advanced_Topics\hot_reload>v -live graph.v
compiling shared library took 3156 ms
=========


E:\Vlang\The_Way_to_V\Chapter_12_Advanced_Topics\hot_reload>graph
create window wnd=0000000003A37AD0 ptr==0000000000000000
#version 330 core
layout (location = 0) in vec4 vertex; // <vec2 pos, vec2 tex>
out vec2 TexCoords;

uniform mat4 projection;

void main()
{
    gl_Position = projection * vec4(vertex.xy, 0.0, 1.0);
    TexCoords = vertex.zw;
}
*/
module main

import gx
import gg
import time
import glfw
// import math
import os

const (
	Size  = 700
	Scale  = 50.0 
)

struct Context {
	gg &gg.GG
}

fn main() {
	os.clear()
	glfw.init_glfw()
	ctx:= &Context{ 
		gg: gg.new_context(gg.Cfg {
			width: Size 
			height: Size 
			use_ortho: true 
			create_window: true 
			window_title: 'Graph builder' 
			window_user_ptr: ctx 
			always_on_top: true
		})
	} 
	go update() // update the scene in the background in case the window isn't focused 
	for { 
		gg.clear(gx.White) 
		ctx.draw()
		ctx.gg.render() 
	}
}

[live] 
fn (ctx &Context) draw() {
	ctx.gg.draw_line(0, Size / 2, Size, Size / 2) // x axis 
	ctx.gg.draw_line(Size / 2, 0, Size / 2, Size) // y axis 
	center := f64(Size / 2)
	mut y := 0.0
	for x := -10.0; x <= 10.0; x += 0.002 {
		y = x * x - 1 
		//y = (x + 3) * (x + 3) - 1
		//y = math.sqrt(30.0 - x * x)
		ctx.gg.draw_rect(center + x * Scale, center - y * Scale, 1, 1, gx.Black) 
		//ctx.gg.draw_rect(center + x * Scale, center + y * Scale, 1, 1, gx.Black) 
	}
}

fn update() {
	for { 
		gg.post_empty_event() 
		time.sleep_ms(300) 
	} 
} 
