# frozen_string_literal: true

require_relative 'piece'

# Represents a Bishop on the chess board.
class Bishop < Piece
  def can_move?(new_location)
    (@location[0] - new_location[0]).abs == (@location[1] - new_location[1]).abs
  end
end
