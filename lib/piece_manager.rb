# frozen_string_literal: true

require 'require_all'
require_all 'lib/pieces'

# Keeps track of all the pieces of a
# single colour.
class PieceManager
  attr_accessor :pieces

  def initialize(is_white)
    @pieces = init_pawns(is_white)
    @pieces += init_rooks(is_white)
    @pieces += init_knights(is_white)
    @pieces += init_bishops(is_white)
    @pieces += init_queen(is_white)
    @pieces += init_king(is_white)
  end

  # This method is only used for displaying
  # the board.
  def get_piece_at(location)
    @pieces.find { |piece| piece.location == location }
  end

  def get(piece_type)
    @pieces.select { |piece| piece.instance_of? piece_type }
  end

  def remove_piece(captured_piece)
    @pieces.delete(captured_piece)
  end

  def init_pawns(is_white)
    start_row = is_white ? 1 : 6
    pawns = []
    8.times do |start_col|
      pawns << Pawn.new([start_row, start_col], is_white)
    end
    pawns
  end

  def init_rooks(is_white)
    start_row = is_white ? 0 : 7
    [Rook.new([start_row, 0], is_white),
     Rook.new([start_row, 7], is_white)]
  end

  def init_knights(is_white)
    start_row = is_white ? 0 : 7
    [Knight.new([start_row, 1], is_white),
     Knight.new([start_row, 6], is_white)]
  end

  def init_bishops(is_white)
    start_row = is_white ? 0 : 7
    [Bishop.new([start_row, 2], is_white),
     Bishop.new([start_row, 5], is_white)]
  end

  def init_queen(is_white)
    start_row = is_white ? 0 : 7
    [Queen.new([start_row, 3], is_white)]
  end

  def init_king(is_white)
    start_row = is_white ? 0 : 7
    [King.new([start_row, 4], is_white)]
  end
end
