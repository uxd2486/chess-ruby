# frozen_string_literal: true

require_relative 'piece'

# Represents the King on the chess board.
class King < Piece
  def can_move?(new_location)
    (@location[0] - new_location[0]).between?(-1, 1) &&
      (@location[1] - new_location[1]).between?(-1, 1)
  end

  def unicode
    @is_white ? "\u265A" : "\u2654"
  end
end
