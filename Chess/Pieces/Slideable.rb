module Slideable

    HORIONTAL_DIRS = [
        [0,-1] #left
        [0,1] #right
        [-1,0] #up
        [1,0] #down
    ].freeze

    DIAGONAL_DIRS = [
        [-1,-1] #left up
        [-1, 1] #right up
        [1, -1] #left down
        [1, 1] #right down
    ].freeze

    def horizontal_dirs
        HORIONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves

        #create array to collect all possible moves
        #call move_dirs from piece subclass


    end

    private
    
    def grow_unblocked_moves_in_dir(d1,d2)

    end

end