require './lib/generate_code'
require './lib/methods'



class Game #Class called game
  attr_reader :code, :secret_code #Two methods


  def initialize #Initialized when instance of Game class is installed
    @code = Code.new #Instance variable of Code class
    @amount_of_guesses = 0 #Instance variable set to 0
    @secret_code = "AAAA"
  end #Terminates initialize method

  start_message #Welcome & Displays play,read,quit options

  def start_game #Method called start_game
    user_input = gets.chomp.upcase #Gets user input
    options(user_input)#Takes users input & executes play,read, quit options. Anything other input is invalid and restarts this method
  end #Terminates start_game method


  def game_guess #Method takes users guess
    user_guess = gets.chomp.upcase #Takes users input
    options_two(user_guess)#Filters Users answer for cheat or quit first
    game_rules(user_guess)#Takes users anwser to filter through game mechanics
  end #Terminates game_guess method

  def game_rules(user_guess) #Takes users answer to filter through game rules.
    @amount_of_guesses +=1 #Adds 1 to a_o_g to track attempts made
    check_length(user_guess) #Checks users answer for correct length. If length not correct restarts from game_guess method for correct input.
    incorrect_guess(user_guess)#Gives user feedback on guess & displays guess attempts
    correct_answer(user_guess)#Takes user to end game after user inputs correct answer
  end #Terminates game_rules method


end #Terminates class
