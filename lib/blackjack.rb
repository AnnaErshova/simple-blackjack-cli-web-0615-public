# each players is dealt 2 cards, each one has a value between 1 and 11
def deal_card
  rand(1..11)
  # generates random value between 1 and 11
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
  # accepts one argument, the card total
  # prints the value of the cards to the screen
  # does not hardcode the card total
end

def welcome
  puts "Welcome to the Blackjack Table"
  # prints a welcome message to screen
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # gives instructions for hitting or staying
end

def initial_round
  # calls on #deal_card twice and returns the sum
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def end_game(sum)
  puts "Sorry, you hit #{sum}. Thanks for playing!"
  # prints apology, card total, and thank you message
  # expected: ("Sorry, you hit 27. Thanks for playing!")
end

def get_user_input
  puts "Please enter your input"
  user_input = gets.chomp
end

def hit?(sum)
  # hit? calls on #prompt_user then #get_user_input
  # hit? returns an integer which is the card total
  # hit? does not deal another card if user types 's'
  # hit? deals another card when user types 'h'
  # calls on #prompt_user then #get_user_input
  prompt_user
  if (get_user_input == "h")
    return sum + deal_card
  end
  return sum
end

def invalid_command
  puts "Invalid Command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # calls on the #welcome method
  welcome
  # then on the #initial_round method, 
  running_total = initial_round
  # then calls #hit? and #display_card_total methods
  until running_total > 21
    running_total = hit?(running_total)
    display_card_total(running_total)
  end
  # -until- the card sum is greater than 21,
  # then calls on the #end_game method
  end_game(running_total)
end
    