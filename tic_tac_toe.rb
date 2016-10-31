require './lib/game'
require './lib/board'
require './lib/player'
require './lib/computer_player'

puts "Welcome to tic tac toe!"
puts "A multiplayer, command-line game"
puts "================================"
sleep 1
puts "Would you like to play the one or two player game?"
players = ''
while players != "1" && players != "2"
  puts 'Just enter "1" or "2" to select mode'
  players = gets.chomp
end

puts "Readying board..."
sleep 1
x_player = HumanPlayer.new(:x)
o_player = HumanPlayer.new(:o)
c_player = ComputerPlayer.new(:o)
if players == "1"
  game = Game.new(Board.new, x_player, c_player)
else
  game = Game.new(Board.new, x_player, o_player)
end

puts ""
puts game.board.board_instructions
puts ""
while !game.game_over? && !game.drawn_game?
  if game.current_player == x_player
    puts "X team, it's your turn!"
  else
    puts "O team's turn!"
  end
  game.place_your_mark
  puts ""
  puts game.board.show_board
  puts ""
  game.swap_turns
  sleep 1
end

puts "================================"
puts "The game ends!"
if game.drawn_game?
  puts "You are too evenly matched. The game was a draw!"
else
  game.current_player == x_player ? (puts "The O team wins!") :
  (puts "The X team wins. Well done!")
end
