require_relative'./Piece.rb'
require_relative './Stepable.rb'


class Knight < Piece
    include Stepable

    def symbol

    end

    def move_diffs
        knight_diffs
    end
    
    # protected
    # def move_diffs
    #     [
    #     [2,1],
    #     [1,2], 
    #     [2,-1], 
    #     [-1,2],
    #     [-1,-2], 
    #     [-2,-1], 
    #     [1,-2], 
    #     [-2,1] 
    #     ]
    # end
end