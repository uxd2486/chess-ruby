# frozen_string_literal: true

# Represents a piece on the chess board
# This is an abstract class and should
# NOT BE INSTANTIATED.
class Piece
  def initialize(location)
    @location = location
  end

  def can_move?(new_location); end

  def move(new_location)
    @location = new_location
  end
end
