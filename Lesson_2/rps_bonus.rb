CHOICES = {
  'rock' => ['lizard', 'scissors'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['paper', 'spock']
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  CHOICES[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

prompt("Welcome to Rock Paper Scissors Spock Lizard.")
prompt("First to 3 is the grand winner!")

loop do
  player_points = 0
  computer_points = 0
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{CHOICES.keys.join(', ')}.")
      choice = gets.chomp

      if choice.downcase.start_with?('r')
        choice = 'rock'
        break
      elsif choice.downcase.start_with?('p')
        choice = 'paper'
        break
      elsif choice.downcase.start_with?('l')
        choice = 'lizard'
        break
      elsif choice.downcase.start_with?('sc')
        choice = 'scissors'
        break
      elsif choice.downcase.start_with?('sp')
        choice = 'spock'
        break
      elsif choice.downcase == 's'
        prompt('Did you want to choose scissors (sc) or spock (sp)?')
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = CHOICES.keys.sample

    prompt("You chose: #{choice}. Computer chose: #{computer_choice}.")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_points += 1
    elsif win?(computer_choice, choice)
      computer_points += 1
    end
    prompt("Player: #{player_points}. Computer: #{computer_points}")

    if player_points == 3
      prompt("You are the grand winner!")
      break
    elsif computer_points == 3
      prompt("The computer is the grand winner!")
      break
    end
  end

  prompt('Do you want to play again? y/n')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing! Catch ya later.')
