def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  turn_1 = deal_card
  turn_2 = deal_card
  card_total = turn_1 + turn_2
  display_card_total(card_total)
  return card_total
end

def hit?(current_total)
  prompt_user
  player_input = get_user_input
  if player_input == 'h'
    new_card_num = deal_card
    current_total += new_card_num
    if player_input != 's' || player_input != 'h'
      invalid_command
      prompt_user
      get_user_input
    end
  end
  current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
