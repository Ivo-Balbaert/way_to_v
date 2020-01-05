enum Color {
	red green blue
}

enum Days {
        sunday
        monday
        tuesday
        wednesday
        thursday
        friday
        saturday
}

enum GameState {
        paused running gameover
}

fn main() {
        mut color := Color.red 
        color = .green
        // Linux ok // Windows: `Color` needs to have method `str() string` to be printable
        println(color)               // => 1 
        println(Color.blue)          // => 2
        println(color in [.blue, .green, .red]) // true

        mut day := Days.friday
	day = .saturday
}
