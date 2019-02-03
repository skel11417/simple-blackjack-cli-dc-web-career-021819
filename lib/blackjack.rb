require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  puts "Your cards add up to #{sum}"
  sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  unless invalid_command(user_input)
  
end

def invalid_command(command)
  # code invalid_command here
  if command != 's' || command != 'h' || command != 'exit'
    true
  else
    false
  end
end
binding.pry
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
