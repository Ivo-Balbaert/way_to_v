module main

import os
import time
import miniaudio as ma

fn main() {
	os.clear()
	//load sounds
    wav_file := 'click.wav'
    println('Loading wav')
    mut a := ma.from(wav_file)
    length := int(a.length())

    println('Playing wav '+length.str())
    a.play()
    time.sleep_ms(length)

    println('Playing wav '+length.str())
    a.play()
    time.sleep_ms(length)

    a.free()
}
