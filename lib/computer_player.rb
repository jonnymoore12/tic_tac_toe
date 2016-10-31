require_relative 'player'

class ComputerPlayer < Player

  def make_your_move(board)
    puts "The computer is thinking..."
    sleep 1
    position = computer_makes_move(board)
  end

private

  def computer_makes_move(board)
    unoccupied_positions(board).keys.sample
  end

  def unoccupied_positions(board)
    board.positions.select { |position| board.positions[position] == ' ' }
  end
end
