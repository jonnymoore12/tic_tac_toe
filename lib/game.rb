class Game

  attr_reader :board, :current_player, :x_player, :o_player

  def initialize(board, x_player, o_player)
    @board = board
    @current_player = x_player
    @x_player = x_player
    @o_player = o_player
  end

  def prompt_player_move
    position = @current_player.make_your_move
    board.place_mark(position, @current_player.type)
  end

  def swap_turns
    if @current_player == @x_player
      @current_player = @o_player
    else
      @current_player = @x_player
    end
  end

end
