# frozen_string_literal: true

require_relative 'piece_manager'

# Represents the chess board.
class Board
  def initialize
    @white_pieces = PieceManager.new(true)
    @black_pieces = PieceManager.new(false)
  end
end
