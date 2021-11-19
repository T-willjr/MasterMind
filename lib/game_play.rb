# secret_code = ["g", "r", "b", "y"]
# secret_code = secret_code.shuffle.join
# amount_of_guesses = 0
#
# puts "Welcome to MASTERMIND"
#
# puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
# print "<"
# user_input = gets.chomp
#
# loop do
#   case user_input
#
#   when "q"
#     puts "You have quit the game."
#     break
#
#   when "i"
#     puts "I have generated a beginner sequence with four elements made up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. Please enter a four letter sequence using the letters'rgby'.
#     Are you ready to play?"
#     puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
#     user_input = gets.chomp
#
#   when "p"
#     print "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\nWhat's your guess? \n<"
#     user_guess = gets.chomp
#         loop do
#           case user_guess
#             when user_guess == "q" || "quit"
#               puts "You have quit the game."
#               break
#             when user_guess == "c" || "cheat"
#               puts "The secret code is: #{secret_code}"
#               puts "Would you like to try again? "
#               puts "(p)lay, read the (i)nstructions, or (q)uit"
#               user_input = gets.chomp
#
#             when user_guess === secret_code #AMOUNT OF GUESSES/AND TIME IT TOOK TO GUESS SECRET CODE
#               amount_of_guesses += 1
#               puts "Congratulations! You guessed the sequence #{secret_code} in 8 guesses over 4 minutes, 22 seconds.
#
#               Do you want to (p)lay again or (q)uit?"
#               user_input = gets.chomp
#               else #ADD METHOD TO SEE IF THEY GOT ANY OF THE SECRET CODE RIGHT/ ANY OF THE CODE IN THE RIGHT POSITION.
#               amount_of_guesses += 1
#               puts "#{user_guess} has _______ of the correct elements with _____ in the correct positions
#               You've made #{amount_of_guesses} guess(s)"
#               print "Try Again! or (q)uit\n<"
#               user_guess = gets.chomp
#           end
#       end
#   end
# end

# what runs when the user plays?
# what runs when the user asks for instructions?
# what runs when the user quits?
# What runs when the user cheats?

class Game

  def start_game
    puts "Welcome to MASTERMIND \nWould you like to (p)lay, read the (i)nstructions or (q)uit?"
    user_input = gets.chomp.downcase
    continue_game
  end

  def continue_game(user_input)
    case user_input
    when 'p'
      play_game
    when 'i'
      puts "THE INSTRUCTIONS GO HERE"
      start_game
    when 'q'
      quit_game
    else
      puts "INVALID INPUT"
      start_game
    end
  end

end
