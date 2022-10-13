# frozen_string_literal: true

require_relative 'piece'

# Represents a Knight on the chess board.
class Knight < Piece
  def initialize(location, is_white)
    super(location, is_white)
    @move_transformations = [[2, 1],
                             [2, -1],
                             [-2, 1],
                             [-2, -1],
                             [1, 2],
                             [-1, 2],
                             [1, -2],
                             [-1, -2]].freeze
  end

  def can_move?(new_location)
    @move_transformations.any? do |row, col|
      @location == [row + new_location[0], col + new_location[1]]
    end
  end

  def unicode
    @is_white ? "\u265E" : "\u2658"
  end
end
