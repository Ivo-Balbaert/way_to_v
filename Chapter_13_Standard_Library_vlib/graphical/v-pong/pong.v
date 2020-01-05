module main

import os
import math
import time
import gx
//import gl
import gg
import glfw
import freetype
// import miniaudio as ma

const (
	Width = 800 //px windows
	Height = 500 //px window
	PaddleHeight = 10 //px
	PaddleWidth = 50 //px
	PaddleSpeedComputer = 5 //px/s
	PaddleSpeed = 5 //px/s
	PaddlePadding = 20 //px from top/bottom
	TickSpeed = 10 //ms refresh rate
	BallSize = 10 //px
	BallVelocity = 1 //px/s movement speed
	TextSize = 12 //px
	Debug = false //true or false, display more info
)

const (
	wav_boop_paddle = './resources/sounds/boop_paddle.wav'
)

const (
	text_cfg = gx.TextCfg{
		align:gx.ALIGN_LEFT
		size:TextSize
		color:gx.Green
	}
	over_cfg = gx.TextCfg{
		align:gx.ALIGN_LEFT
		size:TextSize
		color:gx.White
	}
)

const (
	BackgroundColor = gx.Black
	UIColor = gx.Green
	PaddleColor = gx.Green
)

struct PaddleComputer {
mut:
    x int
    score int
	dx f32
}

struct PaddlePlayer {
mut:
    x int
    score int
	dx int
}

struct Ball {
mut:
	x f32
	y f32
	dx f32
	dy f32
	speed f32
	collided bool
}

struct Game {
mut:
	height int
	width int
	ball Ball
	player PaddlePlayer
	computer PaddleComputer
	// gg context for drawing
	gg          &gg.GG
	// ft context for font drawing
	ft          &freetype.FreeType
	font_loaded bool
}

fn main() {
	os.clear()
	glfw.init_glfw()
	//init game
	mut game := &Game{
		gg: gg.new_context(gg.Cfg {
			width: Width
			height: Height
			use_ortho: true // This is needed for 2D drawing
			create_window: true
			window_title: 'V Pong'
			window_user_ptr: game
		})
		ft: 0
		height: Height 
		width: Width
	}
	game.gg.window.set_user_ptr(game) // TODO remove this when `window_user_ptr:` works
	game.init_game()
	println('Starting the game loop...')
	game.gg.window.onkeydown(key_down)
	go game.run() // Run the game loop in a new thread
	gg.clear(BackgroundColor)
	// Try to load font
	game.ft = freetype.new_context(gg.Cfg{
			width: Width
			height: Height
			use_ortho: true
			font_size: 18
			scale: 2
	})
	game.font_loaded = (game.ft != 0 )
	for {
		gg.clear(BackgroundColor)
		game.draw_scene()
		game.gg.render()
		if game.gg.window.should_close() {
			game.gg.window.destroy()
			return
		}
	}
}

fn (g mut Game) init_game() {
	println('Init game...')
	//mut ball := &Ball{
	g.player = PaddlePlayer{
		x: g.width/2
		dx: 0
	}
	g.computer = PaddleComputer{
		x: g.width/2
		dx: 0
	}
	g.ball = Ball{
		//x: g.width / 2
		//y: g.height / 2
		x: (g.player.x + ((PaddleWidth/2)-(BallSize / 2)))
		y: (g.height - PaddlePadding - PaddleHeight - BallSize)
		//dx: BallVelocity
		//dy: -BallVelocity
		dx: 0
		dy: 0
		speed: BallVelocity
		collided: false
	}
	//load sounds
	/* println('Load sounds...')
	println(wav_boop_paddle)
	mut sound_beep := ma.from(wav_boop_paddle)
	println('Loaded wav,length '+sound_beep.length().str())
	sound_beep.play()
	time.sleep_ms(int(sound_beep.length()))
	sound_beep.free() */
}

fn (g mut Game) reset() {
	println('Reset ball...')
	g.computer.x = g.width / 2
	g.computer.dx = 0
	g.player.x = g.width / 2
	g.player.dx = 0
	g.ball = Ball{
		//x: g.width / 2
		//y: g.height / 2
		x: (g.player.x + ((PaddleWidth/2)-(BallSize / 2)))
		y: (g.height - PaddlePadding - PaddleHeight - BallSize)
		dx: 0
		dy: 0
		speed: BallVelocity
		collided: false
	}
}

//fn (g mut Game) draw_scene() {
fn (g mut Game) draw_scene() {
	g.draw_ball()
	g.draw_paddle()
	//g.draw_field()
	g.draw_ui()
	if(Debug){
		g.draw_debug()
	}
}

fn (g &Game) draw_ball() {
		color := UIColor
		g.gg.draw_rect(int(g.ball.x), int(g.ball.y),
			BallSize, BallSize, color)
}

fn (g &Game) draw_paddle() {
		color := PaddleColor
		g.gg.draw_rect(g.computer.x, PaddlePadding,
			PaddleWidth, PaddleHeight, color)
		g.gg.draw_rect(g.player.x, g.height - (PaddlePadding + PaddleHeight),
			PaddleWidth, PaddleHeight, color)
}

fn (g mut Game) run() {
	for {
		g.move_player()
		g.move_computer()
		g.check_ball_collision()
		g.move_ball()
		//ball.speed = ball.speed + SPEEDINCREASE
		//g.ball.dx *= ball.speed
		//g.ball.dy *= ball.speed
		//println('bdx $g.ball.dx bdy $g.ball.dy')
		// Refresh
		glfw.post_empty_event() // force window redraw
		time.sleep_ms(TickSpeed)
	}
}

fn (g mut Game) move_ball() {
	//if g.ball.y >= g.height - Height || g.ball.y <= 0 {
		//if g.ball.collided || g.ball.y >= (g.height - PaddlePadding){//TODO remove or when player added
		if g.ball.collided{
			println('ball bounce paddle')
			g.ball.speed *= 1.1
			g.ball.dx *= 1.1
			g.ball.dy *= 1.1
			g.ball.dy = -g.ball.dy
			g.ball.collided = false
		}
		//TODO else score
	//if g.ball.x >= g.width - Width || g.ball.x <= 0 {
	//bounce from side walls
	if g.ball.x >= g.width - BallSize || g.ball.x <= 0 {
		g.ball.dx = - g.ball.dx
	}
	if(g.ball.y > (g.height - BallSize)){
		//Computer scored
		g.computer.score ++
		g.reset()
		return
	}
	if(g.ball.y < BallSize){
		//Player scored
		g.player.score ++
		g.reset()
		return
	}
	g.ball.x += g.ball.dx
	g.ball.y += g.ball.dy
}

fn (g mut Game) move_computer() {
	ball := g.ball
	if(ball.dx == 0) {return}
	fakecenter := g.computer.x + PaddleWidth/2 - BallSize/2
	//TODO target center of ball with center of target
	//if ball further left move left
	if ball.x < fakecenter {
		g.computer.dx = f32(math.max(g.ball.speed * -1.5, f32(-PaddleSpeedComputer)))
	}
	//if ball further right move right
	else if ball.x > fakecenter {
		g.computer.dx = f32(math.min(g.ball.speed * 1.5, f32(PaddleSpeedComputer)))
	} else{
		//g.computer.dx = 0//TODO check this, makes paddle lag
	}
	if((g.computer.x + int(g.computer.dx)) < 0){
		g.computer.dx = 0
	}
	if((g.computer.x + int(g.computer.dx)) > (g.width - PaddleWidth)){
		g.computer.dx = 0
	}
	g.computer.x += int(g.computer.dx)
}

fn (g mut Game) move_player() {
	if((g.player.x + g.player.dx) < 0){
		g.player.dx = 0
	}
	if((g.player.x + g.player.dx) > (g.width - PaddleWidth)){
		g.player.dx = 0
	}
	if(g.ball.dy == 0){//TODO clean this up, temp to move ball when paused
		g.ball.dx = g.player.dx
	}
	g.player.x += int(g.player.dx)
}

fn (g mut Game) check_ball_collision() {
	ball := g.ball
	//computer := g.computer
	//player := g.player
	//top (computer) paddle
	//if(ball.y <= (PaddlePadding + PaddleHeight) && (ball.y + ball.dy) >= PaddlePadding){
	if(ball.dy < 0 && ball.y <= (PaddlePadding + PaddleHeight) && (ball.y) >= PaddlePadding
	&& ball.x > (g.computer.x - BallSize) && ball.x <= (g.computer.x + PaddleWidth)){
		g.ball.collided = true
		println('ball collided computer')
	}
	//bottom (player) paddle
	//if(ball.y <= (g.height - PaddlePadding - PaddleHeight) && (ball.y + ball.dy) >= (g.height - PaddlePadding)){
	//if(ball.y <= (g.height - PaddlePadding - PaddleHeight) && (ball.y) >= (g.height - PaddlePadding)){
	if(ball.dy > 0 && (ball.y + BallSize) >= (g.height - PaddlePadding - PaddleHeight) && (ball.y + BallSize) <= (g.height - PaddlePadding)
	&& ball.x > (g.player.x - BallSize) && ball.x <= (g.player.x + PaddleWidth)){
		g.ball.collided = true
		println('ball collided player')
	}
	if(g.ball.collided){
		println('BALL COLLIDED')
	}
}

fn (g mut Game) draw_debug() {
	if g.font_loaded {
		g.ft.draw_text(int(g.ball.x + BallSize), int(g.ball.y + BallSize), '$g.ball.x $g.ball.y', text_cfg)
		g.ft.draw_text(5, 2 + 5 + TextSize, '$g.computer.x', text_cfg)
		g.ft.draw_text(5, 2 + 2 + 5 + TextSize * 2, 'Computer dx: $g.computer.dx', text_cfg)
		mut text := ''
		if(g.ball.dy < 0){ text = 'Moving up'}
		else {text = 'Moving down'}
		g.ft.draw_text(5, 5 + TextSize * 3, text, text_cfg)
		g.ft.draw_text(5, 5 + TextSize * 4, 'Collided: $g.ball.collided', text_cfg)
		g.ft.draw_text(5, 5 + TextSize * 5, 'Player dx: $g.player.dx', text_cfg)
		g.ft.draw_text(5, g.height - 2 - 5 - TextSize - TextSize, '$g.player.x', text_cfg)
	}
}

fn (g mut Game) draw_ui() {
	if g.font_loaded {
		g.ft.draw_text(5, 2, 'Score: $g.computer.score', text_cfg)
		g.ft.draw_text(5, g.height - 2 - TextSize, 'Score: $g.player.score', text_cfg)
	}
}

// TODO: this exposes the unsafe C interface, clean up
fn key_down(wnd voidptr, key, code, action, mods int) {
	//0 keyup 1 keydown 2 keyhold
	if action == 2 {
		return
	}
	// Fetch the game object stored in the user pointer
	mut game := &Game(glfw.get_window_user_pointer(wnd))
	// global keys
	match key {
		//glfw.KEY_ESCAPE {
		//	glfw.set_should_close(wnd, true)
		//}
		glfw.key_space {
			//if game.state == .running {
			//	game.state = .paused
			//} else if game.state == .paused {
			//	game.state = .running
			//} else if game.state == .gameover {
			//	game.init_game()
			//	game.state = .running
			//}
			if(action == 0 && game.ball.dy == 0){
				game.ball.dx = BallVelocity
				game.ball.dy = -BallVelocity
			}
		}
		else {}
	}

	//if game.state != .running {
	//	return
	//}
	// keys while game is running
	match key {
	glfw.KeyLeft {
		if(action == 0){
			game.player.dx = 0
		}
		if(action == 1){
			game.player.dx = -PaddleSpeed
		}
	}
	glfw.KeyRight {
		if(action == 0){
			game.player.dx = 0
		}
		if(action == 1){
			game.player.dx = PaddleSpeed
		}
	}
	else { }
	}
}
