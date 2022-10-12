# frozen_string_literal: true

require_relative 'piece'

# Represents a pawn on the chess board
class Pawn < Piece
  def can_move?(new_location)
    @location == [new_location[0] - 1, new_location[1]]
  end
end
