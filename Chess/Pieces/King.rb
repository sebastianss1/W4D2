class King < Piece
    include Stepable

    def symbol
        # ♚
    end

    protected 

    def move_diffs
        [
        [0,-1], #left
        [0,1], #right
        [-1,0], #up
        [1,0], #down
        [-1,-1], #left up
        [-1, 1], #right up
        [1, -1],#left down
        [1, 1] #right down
        ]
    end





end