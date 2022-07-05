CARD_VALUES = {
  "ace" => [1, 11],
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "10" => 10,
  "jack" => 10,
  "queen" => 10,
  "king" => 10
}

GAME_LIMIT = 21

DEALER_RISK_TOLERANCE = 17

def prompt(str)
  puts("=> #{str}")
end

def loading_action(str)
  print(str)
  sleep 0.5
  print('.')
  sleep 0.5
  print('.')
  sleep 0.5
  print('.')
  sleep 1
  puts('')
end

def suspenseful_action(str)
  puts(str)
  sleep 2
end

def joinor(arr, del1 = ', ', del2 = 'and')
  if arr.size == 1
    arr[0].to_s
  elsif arr.size == 2
    arr.join(' ' + del2 + ' ')
  else
    arr[0..-2].join(del1) + del1 + del2 + ' ' + arr[-1].to_s
  end
end

def initialize_deck
  deck = []

  4.times do
    deck << "ace"
    (2..10).each do |num|
      deck << num.to_s
    end
    deck << "jack"
    deck << "queen"
    deck << "king"
  end

  shuffled_deck = deck.sample(52)
  shuffled_deck
end

def deal_cards!(deck, player_hand, dealer_hand)
  player_hand << deck.pop
  dealer_hand << deck.pop
  player_hand << deck.pop
  dealer_hand << deck.pop
end

def hit!(deck, hand)
  hand << deck.pop
end

def busted?(hand)
  calculate_total(hand) > GAME_LIMIT
end

def calculate_total(hand)
  total = 0
  hand.select { |card| card != 'ace' }.each { |card| total += CARD_VALUES[card] }

  number_of_aces = hand.count('ace')
  total += (CARD_VALUES['ace'][1] * number_of_aces)

  number_of_aces.times do
    if total > GAME_LIMIT
      total -= CARD_VALUES['ace'][1]
      total += CARD_VALUES['ace'][0]
    end
  end

  total
end

def determine_winner(player_hand, dealer_hand)
  if calculate_total(player_hand) > calculate_total(dealer_hand)
    'Player'
  elsif calculate_total(player_hand) < calculate_total(dealer_hand)
    'Dealer'
  else
    'Tie'
  end
end

def declare_winner(player_hand, dealer_hand)
  loading_action("Let's compare cards")

  puts('')
  puts("Player hand: #{joinor(player_hand)}.")
  suspenseful_action("Player total: #{calculate_total(player_hand)}.")

  puts('')
  puts("Dealer hand: #{joinor(dealer_hand)}.")
  suspenseful_action("Dealer total: #{calculate_total(dealer_hand)}.")
  puts('')

  if determine_winner(player_hand, dealer_hand) == 'Tie'
    suspenseful_action("It's a tie!")
  else
    puts("#{determine_winner(player_hand, dealer_hand)} is the winner!")
  end
end

player_points = 0
dealer_points = 0

prompt("Welcome to #{GAME_LIMIT}, friend. Ready to play? (y/n)")

loop do
  answer = gets.chomp
  if answer.downcase.start_with?('y')
    suspenseful_action("Let's get started.")
  elsif answer.downcase.start_with?('n')
    puts("Maybe another time then. See ya around.")
    break
  else
    prompt("Didn't quite catch that. Ready to play? (y/n)")
    next
  end

  loop do
    system 'clear'
    suspenseful_action("Player: #{player_points}. Dealer: #{dealer_points}. First to 5 wins.")
    loading_action('Shuffling deck')
    deck = initialize_deck
    player_hand = []
    dealer_hand = []

    loading_action('Dealing cards')
    deal_cards!(deck, player_hand, dealer_hand)

    loop do
      puts('')
      puts("Dealer has: #{dealer_hand[0]} and unknown card.")
      puts("You have: #{joinor(player_hand)}.")
      puts('')
      prompt("Player turn: hit or stay?")
      answer = gets.chomp

      if answer.downcase.start_with?('h')
        hit!(deck, player_hand)
        system 'clear'
        suspenseful_action('Player hits!')
        if busted?(player_hand)
          puts('')
          puts("Busted... Dealer wins.")
          puts("You have #{joinor(player_hand)}. Thats #{calculate_total(player_hand)}.")
          puts("Dealer had #{joinor(dealer_hand)} for a total of #{calculate_total(dealer_hand)}.")
          puts('')
          dealer_points += 1
          break
        end
      elsif answer.downcase.start_with?('s')
        system 'clear'
        suspenseful_action('Player stays.')
        suspenseful_action("Dealer's turn.")
        puts('')
        loop do
          if calculate_total(dealer_hand) < DEALER_RISK_TOLERANCE
            loading_action('Dealer hits')
            hit!(deck, dealer_hand)
            if busted?(dealer_hand)
              puts('')
              puts("Dealer busted! You win.")
              puts("Dealer has #{joinor(dealer_hand)}. That's #{calculate_total(dealer_hand)}.")
              puts("You had #{joinor(player_hand)} for a total of #{calculate_total(player_hand)}.")
              player_points += 1
              break
            end
          else
            suspenseful_action('Dealer stays.')
            system 'clear'
            declare_winner(player_hand, dealer_hand)
            player_points += 1 if determine_winner(player_hand, dealer_hand) == 'Player'
            dealer_points += 1 if determine_winner(player_hand, dealer_hand) == 'Dealer'
            break
          end
        end
        break
      else
        puts("Didn't quite catch that...")
      end
    end

    if player_points && dealer_points < 5
      prompt("Shall we keep going? (y/n)")
      action = gets.chomp
      break unless action.downcase.start_with?('y')
      suspenseful_action("Another round...")
    elsif player_points == 5
      player_points = 0
      dealer_points = 0
      puts("Player has won five rounds and wins the game!")
      prompt("Shall we play again? (y/n)")
      action = gets.chomp
      break unless action.downcase.start_with?('y')
      suspenseful_action("Let's roll it back then.")
    elsif dealer_points == 5
      player_points = 0
      dealer_points = 0
      puts("Dealer won five rounds and wins the game!")
      prompt("Shall we play again? (y/n)")
      action = gets.chomp
      break unless action.downcase.start_with?('y')
      suspenseful_action("Let's roll it back then.")
    end
  end
  puts("Thanks for playing. See you around.")
  break
end
