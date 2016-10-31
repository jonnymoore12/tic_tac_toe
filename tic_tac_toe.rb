require './lib/game'
require './lib/board'
require './lib/player'

puts "Welcome to tic tac toe!"
puts "A multiplayer, command-line game"
puts "Readying board..."
sleep 1
x_player = Player.new(:x)
o_player = Player.new(:o)
game = Game.new(Board.new, x_player, o_player)

puts ""
puts game.board.board_instructions
puts ""
while !game.game_over? && !game.drawn_game?
  if game.current_player == x_player
    puts "X team, it's your turn!"
  else
    puts "O team, it's your turn!"
  end
  game.place_your_mark
  puts ""
  puts game.board.show_board
  puts ""
  game.swap_turns
  sleep 1
end

puts "The game ends!"
if game.drawn_game?
  puts "You are too evenly matched. The game was a draw!"
else
  game.current_player == o_player ? (puts "The X team wins!") : (puts "The Y team wins!")
end
