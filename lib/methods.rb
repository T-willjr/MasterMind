
#****************START_GAME METHODS************
def start_message
  puts "Welcome to MASTERMIND \nWould you like to (p)lay, read the (i)nstructions or (q)uit?"
end

def options(user_input)
  case user_input
  when 'P', 'PLAY'
    game_message
    #make_code
    #time_start
    game_guess
  when 'I', 'INSTRUCTIONS'
    puts "ADD INSTRUCTIONS"
    instructions_input = gets.chomp.upcase
    options(instructions_input)
  when "Q", "QUIT"
      quit_game
  else
    puts "INVALID INPUT"
    start_game
  end
end

def quit_game
  puts "You have quit the game."
  exit!
end

def game_message
  puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (c) or (cheat)to print current code. Use (q) or (quit) at any time to end the game.\nWhat's your guess?"
end



#****************GAME_GUESS METHODS*************

def options_two(user_input)
  case user_input
  when "C", "CHEAT"
    puts "The secret code is #{"INSERT SECRET CODE"}"
    quit_game
  when "Q", "QUIT"
    quit_game
  end
end
#************GAME_RULES METHODS*****************

def check_length(user_guess)

  if user_guess.length > 4
    puts "Your guess was too long. Try Again! || (q)uit! || (c)heat!"
    game_guess

  elsif user_guess.length < 4
    puts "Your guess was too short. Try Again! || (q)uit! || (c)heat!"
    game_guess
  end
end


def incorrect_guess(user_guess)
  #user_guess_compare
  if user_guess.length == 4 && user_guess != @secret_code
    puts "#{user_guess} has #{"NUMBER HERE"} of the correct elements with #{"NUMBER HERE"} in the correct positions. You've taken #{@amount_of_guesses} guess.\nTry Again! || (q)uit! || (c)heat!"
    game_guess
  end
end

def correct_answer(user_guess)
  #time_end
  if user_guess == @secret_code
    puts "Congratulations! You guessed the sequence #{@secret_code} in #{@amount_of_guesses} guesses over #{"**FIGURE THE TIME THING OUT**"}."
    puts "Do you want to (p)lay again? || (q)uit?"
    start_game
  end
end

# def user_guess_compare(guess_input)
#   guess_input.count(@secret_code)
# end
#
# def track_time
# end

#TIME
#Instructions
#Incorrect guess
#Make code

start_time = Time.now


#*****************END***************************
