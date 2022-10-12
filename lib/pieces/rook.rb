# frozen_string_literal: true

require_relative 'piece'

# Represents a Rook on the chess board.
class Rook < Piece
  def can_move?(new_location)
    can_move_horizontally?(new_location) || can_move_vertically?(new_location)
  end

  def can_move_horizontally?(new_location)
    new_location[0] == @location[0]
  end

  def can_move_vertically?(new_location)
    new_location[1] == @location[1]
  end
end
