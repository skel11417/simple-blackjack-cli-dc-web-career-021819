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
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  while card_total < 21 do
    prompt_user
    user_input = get_user_input
    if user_input == 'h'
      card_total += deal_card
    elsif user_input == 's'
      break
    else
      invalid_command
    end
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end
# binding.pry
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  display_card_total(initial_round)
  final = hit?(card_total)
  end_game(final)
  
end
    
