# frozen_string_literal: true

require_relative 'piece'

# Represents the King on the chess board.
class King < Piece
  def initialize(location)
    super(location)
    @move_transformations = [[1, 1],
                             [1, -1],
                             [-1, 1],
                             [-1, -1],
                             [1, 0],
                             [-1, 0],
                             [0, 1],
                             [0, -1]].freeze
  end

  def can_move?(new_location)
    @move_transformations.any? do |row, col|
      @location == [row + new_location[0], col + new_location[1]]
    end
  end
end
