# frozen_string_literal: true

require 'colorize'

# Responsible for printing the
# chess board.
class DisplayManager
  def initialize(board)
    @board = board
  end

  def print_board
    @board
  end
end
