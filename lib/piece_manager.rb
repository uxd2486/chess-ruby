# frozen_string_literal: true

require 'require_all'
require_all 'lib/pieces'

# Keeps track of all the pieces of a
# single colour.
class PieceManager
  def initialize(is_white)
    @pieces = init_pawns(is_white)
    @pieces += init_rooks(is_white)
    @pieces += init_knights(is_white)
    @pieces += init_bishops(is_white)
    @pieces += init_queen(is_white)
    @pieces += init_king(is_white)
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
    []
  end

  def init_bishops(is_white)
    []
  end

  def init_queen(is_white)
    []
  end

  def init_king(is_white)
    []
  end
end