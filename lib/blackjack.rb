def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  response = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card = deal_card
  deal_card
  deal_card
  card_total = card * 2
  display_card_total(card_total)
end

def hit?(card_total)
  prompt_user
  response = get_user_input
  if response == "h"
    card = deal_card
    card_total += card
  elsif response == "s"
  else
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end