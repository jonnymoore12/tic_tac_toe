class Player
  # Enter their name or anything else rolled up in the init method??

  attr_reader :type

  def initialize(type)
    @type = type
  end

  def make_your_move
    puts "Where would you like to move (1-9)?"
    position = gets.chomp.to_i
  end
end
