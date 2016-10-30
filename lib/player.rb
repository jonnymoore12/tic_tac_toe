class Player
  # Enter their name or anything else rolled up in the init method??

  attr_reader :type

  def initialize(type)
    @type = type
  end

  def make_your_move
    puts "Where would you like to move next"
    position = gets.chomp
    # check that the position is legal
  end
end
