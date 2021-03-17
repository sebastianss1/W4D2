require_relative'./Pieces.rb'
require_relative './Board.rb'

class Knight < Piece
    include Stepable

    def symbol

    end
    
    protected
    def move_diffs
        [
        [2,1],
        [1,2], 
        [2,-1], 
        [-1,2],
        [-1,-2], 
        [-2,-1], 
        [1,-2], 
        [-2,1] 
        ]
    end
end