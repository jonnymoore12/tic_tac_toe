require './lib/game'
require './lib/board'
require './lib/player'

puts "Welcome to tic tac toe!"
puts "A multiplayer, command-line game"
sleep 1
puts "Readying board..."
sleep 1
x_player = Player.new(:x)
o_player = Player.new(:o)
game = Game.new(Board.new, x_player, o_player)

puts ""
puts game.board.board_instructions
sleep 1
puts ""
while !game.game_over?
  if game.current_player == x_player
    puts "X team, it's your turn!"
  else
    puts "Y team, it's your turn!"
  end
  game.place_your_mark
  puts ""
  puts game.board.show_board
  puts ""
  game.swap_turns
  sleep 1
end

puts "The game ends!"
