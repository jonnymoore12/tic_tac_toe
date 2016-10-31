require_relative 'player'

class HumanPlayer < Player

  def make_your_move(board = nil)
    puts "Where would you like to move (1-9)?"
    position = gets.chomp.to_i
  end

end
