# Tic Tac Toe
# 1. Display the initial empty 3x3 board
# 2. Ask the user to mark a square
# 3. Computer marks a square
# 4. Display updated board state
# 5. If winner, display winner
# 6. If boar full, display tie
# 7. If neither winner nor board full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Goodbye!

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, scr1, scr2, start)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}. #{start} has the first move."
  puts "Player score: #{scr1}. Computer score: #{scr2}. First to 5 wins!"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry, that's not a valid choice.")
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  WINNING_LINES.each do |grouping|
    if grouping.select { |square| brd[square] == COMPUTER_MARKER }.size == 2 && grouping.select { |square| brd[square] == INITIAL_MARKER }.size == 1
      brd[grouping.select { |square| brd[square] == INITIAL_MARKER }[0]] = COMPUTER_MARKER
      return
    elsif grouping.select { |square| brd[square] == PLAYER_MARKER }.size == 2 && grouping.select { |square| brd[square] == INITIAL_MARKER }.size == 1
      brd[grouping.select { |square| brd[square] == INITIAL_MARKER }[0]] = COMPUTER_MARKER
      return
    end
  end

  if brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(arr, del1 = ', ', del2 = 'or')
  if arr.size == 1
    arr[0].to_s
  elsif arr.size == 2
    arr.join(' ' + del2 + ' ')
  else
    arr[0..-2].join(del1) + del1 + del2 + ' ' + arr[-1].to_s
  end
end

def detect_grand_winner(pscore, cscore)
  if pscore == 5
    "Player"
  elsif cscore == 5
    "Computer"
  end
end

loop do
  player_score = 0
  computer_score = 0
  first_move = nil

  loop do
    prompt("Who moves first? Enter 1 for Player, 2 for Computer, or 3 to let Computer decide.")
    first_move = gets.chomp
    break if ["1", "2", "3"].include?(first_move)
    prompt("Sorry, that's not a valid choice.")
  end

  case first_move
  when "1"
    then first_move = "Player"
  when "2"
    then first_move = "Computer"
  when "3"
    then first_move = ["Player", "Computer"].sample
  end

  loop do
    board = initialize_board

    loop do
      if first_move == "Player"
        display_board(board, player_score, computer_score, first_move)

        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

      elsif first_move == "Computer"
        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        display_board(board, player_score, computer_score, first_move)
        
        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      end
    end

    if someone_won?(board)
      if detect_winner(board) == 'Player'
        player_score += 1
        break if player_score == 5
      elsif detect_winner(board) == 'Computer'
        computer_score += 1
        break if computer_score == 5
      end
      display_board(board, player_score, computer_score, first_move)
      prompt("#{detect_winner(board)} wins the round!")
    else
      display_board(board, player_score, computer_score, first_move)
      prompt("It's a tie!")
    end

    prompt("Keep going? (y or n)")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end

  system 'clear'
  prompt("Player score: #{player_score}. Computer score: #{computer_score}.")
  if player_score == 5 || computer_score == 5
    prompt("#{detect_grand_winner(player_score, computer_score)} reached a score of 5 and is the winner!")
  else 
    prompt("Match ended early, no one reached a score 5.")
  end
  prompt("Play again? (y or n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing tic tac toe. Goodbye!")
