# frozen_string_literal: true

require 'colorize'

# Responsible for printing the
# chess board.
class DisplayManager
  def initialize(board)
    @board = board
  end

  def print_board
    print '   '
    %w[a b c d e f g h].each { |char| print " #{char} " }
    print "\n"
    8.times do |row|
      print " #{8 - row} "
      8.times do |col|
        piece = @board.piece_at([7 - row, col])
        print " #{piece.nil? ? '_' : piece.unicode} "
      end
      print "\n"
    end
  end
end
