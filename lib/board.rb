# frozen_string_literal: true

require_relative 'piece_manager'

# Represents the chess board.
class Board
  def initialize
    @white_pieces = PieceManager.new(true)
    @black_pieces = PieceManager.new(false)
  end

  def piece_at(location)
    @black_pieces.get_piece_at(location) || @white_pieces.get_piece_at(location)
  end
end
