/* enum Color {
	red green blue
}
 */

enum Color {
	red 
        green 
        blue
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

fn is_red_or_blue(c Color) bool {  
        return match c {  
                .red { true }  
                .blue { true }  
                else { false }  
        }  
}

fn main() {
        mut color := Color.red 
        color = .green
        println(color)               // => 1 
        println(Color.blue)          // => 2
        println(color in [.blue, .green, .red]) //  => true

        color = .blue  
        q1 := is_red_or_blue(color)  
        println(q1)  // => true
        println(is_red_or_blue(.green))  // => false

        mut day := Days.friday
	day = .saturday
}
