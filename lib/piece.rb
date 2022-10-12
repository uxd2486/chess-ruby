# frozen_string_literal: true

# Represents a piece on the chess board
# This is an abstract class and should
# NOT BE INSTANTIATED.
class Piece
  def initialize(location, is_white)
    @location = location
    @is_white = is_white
  end

  def can_move?(new_location); end

  def move(new_location)
    @location = new_location
  end

  def white?
    @is_white
  end
end
