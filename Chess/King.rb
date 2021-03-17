require_relative'./Piece.rb'
require_relative './Stepable.rb'

class King < Piece
    include Stepable

    def symbol
        # ♚
    end

    def move_diffs
        king_diffs
    end





end