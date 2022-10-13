# frozen_string_literal: true

# Represents a piece on the chess board
# This is an abstract class and should
# NOT BE INSTANTIATED.
class Piece
  attr_accessor :location

  def initialize(location, is_white)
    @location = location
    @is_white = is_white
  end

  def can_move?(new_location); end
  # returns a unicode representation of the chess piece
  def unicode; end

  def move(new_location)
    @location = new_location
  end

  def white?
    @is_white
  end

  def to_s
    colour = @is_white ? 'White' : 'Black'
    "#{colour} #{self.class} @ [#{@location[0]}, #{@location[1]}]"
  end
end
