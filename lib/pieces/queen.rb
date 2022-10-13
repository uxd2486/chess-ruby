# frozen_string_literal: true

require_relative 'piece'

# Represents the Queen on the chess board.
class Queen < Piece
  def can_move?(new_location)
    can_move_like_bishop?(new_location) || can_move_like_rook?(new_location)
  end

  def can_move_like_bishop?(new_location)
    (@location[0] - new_location[0]).abs == (@location[1] - new_location[1]).abs
  end

  def can_move_like_rook?(new_location)
    can_move_horizontally?(new_location) || can_move_vertically?(new_location)
  end

  def can_move_horizontally?(new_location)
    new_location[0] == @location[0]
  end

  def can_move_vertically?(new_location)
    new_location[1] == @location[1]
  end

  def unicode
    @is_white ? "\u265B" : "\u2655"
  end
end
