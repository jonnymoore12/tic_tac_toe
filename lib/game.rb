class Game

  attr_reader :board, :current_player, :x_player, :o_player

  def initialize(board, x_player, o_player)
    @board = board
    @current_player = x_player
    @x_player = x_player
    @o_player = o_player
  end

  def place_your_mark
    position = @current_player.make_your_move
    # Can this be refactored? How about a while loop
    if position_legal?(position)
      board.place_mark(position, @current_player.type)
    else
      puts "I'm sorry, but you cannot move there. Please try again."
      place_your_mark
    end
  end

  def swap_turns
    if @current_player == @x_player
      @current_player = @o_player
    else
      @current_player = @x_player
    end
  end

  def game_over?
    return true if three_in_a_row?
    false
  end

private

  def position_legal?(position)
    @board.positions[position] == ''
  end

  def three_in_a_row?
    # come back and refactor this bad boy
    @board.positions[1] == 'X' && @board.positions[2] == 'X' && @board.positions[3] == 'X' ||
    @board.positions[1] == 'O' && @board.positions[2] == 'O' && @board.positions[3] == 'O' ||
    @board.positions[4] == 'X' && @board.positions[5] == 'X' && @board.positions[6] == 'X' ||
    @board.positions[4] == 'O' && @board.positions[5] == 'O' && @board.positions[6] == 'O' ||
    @board.positions[7] == 'X' && @board.positions[8] == 'X' && @board.positions[9] == 'X' ||
    @board.positions[7] == 'O' && @board.positions[8] == 'O' && @board.positions[9] == 'O' ||
    @board.positions[1] == 'X' && @board.positions[4] == 'X' && @board.positions[7] == 'X' ||
    @board.positions[1] == 'O' && @board.positions[4] == 'O' && @board.positions[7] == 'O' ||
    @board.positions[2] == 'X' && @board.positions[5] == 'X' && @board.positions[8] == 'X' ||
    @board.positions[2] == 'O' && @board.positions[5] == 'O' && @board.positions[8] == 'O' ||
    @board.positions[3] == 'X' && @board.positions[6] == 'X' && @board.positions[9] == 'X' ||
    @board.positions[3] == 'O' && @board.positions[6] == 'O' && @board.positions[9] == 'O' ||
    @board.positions[1] == 'X' && @board.positions[5] == 'X' && @board.positions[9] == 'X' ||
    @board.positions[1] == 'O' && @board.positions[5] == 'O' && @board.positions[9] == 'O' ||
    @board.positions[3] == 'X' && @board.positions[5] == 'X' && @board.positions[7] == 'X' ||
    @board.positions[3] == 'O' && @board.positions[5] == 'O' && @board.positions[7] == 'O'
  end
end
