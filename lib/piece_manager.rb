# frozen_string_literal: true

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
    []
  end

  def init_rooks(is_white)
    []
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
