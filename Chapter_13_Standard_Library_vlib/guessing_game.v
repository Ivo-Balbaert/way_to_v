// Nov: Windows, still takes sometimes an empty input
// Please guess a number from 1-100 or stop(S) and press <Enter>
// 56
// You guessed 56 on turn 1
// Too big!
// Please guess a number from 1-100 or stop(S) and press <Enter>
// You guessed  on turn 2
// Too small!
// Please guess a number from 1-100 or stop(S) and press <Enter>

// Guess a random number between 1 and 100
import (
  os    // contains the I/O functions
  rand  // to generate a random number to guess
  time  // to seed the random number generating algorithm
)

const (
    max_nr_guess = 10
)

fn main() {
// 1 - Generate random number:
    t := time.now()
    s := t.calc_unix()
    rand.seed(s) // calls C.srand(s)
    secret := rand.next(100) // random number from 1 to 100 for the user to guess
    mut nr_guess := 0

// 2 - Game loop:
    for {
        println('Please guess a number from 1-100 or stop(S) and press <Enter>')
        // TODO: error-handling get_line ?
        guess := os.get_line().trim_space()          // input from user
        if guess == 'S' {
            println('Game stopped')
            return
        }
        nr_guess += 1
        if nr_guess > max_nr_guess {
            println('Sorry, too much guessing, the secret number was: $secret') 
            println('Game over')
            return
        }
        println('You guessed $guess on turn $nr_guess')
        // TODO: error-handling conversion to integer ? integer test ?
        iguess := guess.int() // convert guess to integer
        if iguess > secret {
            println('Too big!')
        } else if iguess < secret {
            println('Too small!')
        } else if iguess == secret {         
            println('Congratulations! You guessed the secret number $secret in $nr_guess turns!')
            return                      // end loop 
        } else {
            print('Incorrect! ')
        }
    }
    println('Thanks for playing the game!')
}
