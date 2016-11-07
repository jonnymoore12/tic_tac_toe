class Board

  attr_reader :positions

  def initialize
    @positions = { 1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => ' ',
                  6 => ' ', 7 => ' ', 8 => ' ', 9 => ' '}
  end

  def board_instructions
    " 1 | 2 | 3 \n" +
    "- - - - -\n" +
    " 4 | 5 | 6 \n" +
    "- - - - -\n" +
    " 7 | 8 | 9 "
  end

  def show_board
    " #{positions[1]} | #{positions[2]} | #{positions[3]} \n" +
    "- - - - - -\n" +
    " #{positions[4]} | #{positions[5]} | #{positions[6]} \n" +
    "- - - - - -\n" +
    " #{positions[7]} | #{positions[8]} | #{positions[9]} "
  end

  def place_mark(position, type)
    positions[position] = type == :x ? 'X' : 'O'
  end

end
