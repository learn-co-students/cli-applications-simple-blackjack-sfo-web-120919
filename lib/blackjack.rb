def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}" 
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(current_total)
  
  total = current_total
 
  user_response = ''
  
  while (user_response != 's') && (user_response != 'h')
      
      prompt_user
      user_response = get_user_input
      if user_response == 's'
        break
      elsif user_response == 'h'
        total += deal_card
      else
        invalid_command
      end 
  end 
  
  return total 
 
  
  
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here


  welcome
  total = initial_round
 
  until total > 21
    
    total = hit?(total)
    display_card_total(total)
  
  end
  
end_game(total)
  

end
    
