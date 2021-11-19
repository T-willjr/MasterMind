
secret_code = ["g", "r", "b", "y"]
secret_code = secret_code.shuffle.join

puts "Welcome to MASTERMIND"

puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
print ">"
user_input = gets.chomp


while true

  case user_input

  when "q"
    puts "You have quit the game."
    break

  when "i"
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. Please enter a four letter sequence using the letters'rgby'.
    What's your guess?"
    user_guess = gets.chomp

  when "p"
    puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
    user_guess = gets.chomp

        case user_guess
        when "q" || "quit"
          puts "You have quit the game."

        when "c" || "cheat"
          puts secret_code

        when user_guess.length < 4
          puts "Your guess was too short!"
          next

        when user_guess.length > 4
          puts "Your guess was too long!"
          next

        when user_guess == secret_code #AMOUNT OF GUESSES/AND TIME IT TOOK TO GUESS SECRET CODE
          puts "Congratulations! You guessed the sequence #{secret_code} in 8 guesses over 4 minutes, 22 seconds.

          Do you want to (p)lay again or (q)uit?"

            user_play_again = gets.chomp
              case user_play_again
              when "p" || "play"
                next
              when "q" || "quit"
                puts "You have quit the game."
                break
              end

        else #ADD METHOD TO SEE IF THEY GOT ANY OF THE SECRET CODE RIGHT/ ANY OF THE CODE IN THE RIGHT POSITION/ ADD HOW MANY GUESSES THEY'VE TAKEN.
          puts "#{user_guess} has 3 of the correct elements with 2 in the correct positions
          You've taken 1 guess"
          next
        end
      end
end
