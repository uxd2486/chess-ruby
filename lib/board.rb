# frozen_string_literal: true

require_relative 'piece_manager'
require_relative 'display_manager'

# Represents the chess board.
class Board
  def initialize
    @white_pieces = PieceManager.new(true)
    @black_pieces = PieceManager.new(false)
    @display_manager = DisplayManager.new(self)
  end

  def piece_at(location)
    @black_pieces.get_piece_at(location) || @white_pieces.get_piece_at(location)
  end

  def print_board
    @display_manager.print_board
  end

  # piece_type MUST be a Class from the pieces
  # directory, not including Piece
  def move_piece(piece_type, location, white)
    piece_manager = white ? @white_pieces : @black_pieces
    pieces = piece_manager.get(piece_type)
    return if pieces.nil?

    piece_to_move = pieces.find { |piece| piece.can_move? location }
    return if piece_to_move.nil?

    piece_to_move.move(location)
  end
end
