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
        possible_moves = []

        #starting point = [0,0]

        self.move_dirs.each do |direction| # [ -1, -1]
            d1 = direction[0] #[1]
            d2 = direction[1] #[1]
            possible_moves << grow_unblocked_moves_in_dir(d1,d2)
        end 
        possible_moves
    end

    private
    
    def grow_unblocked_moves_in_dir(dx, dy) 

        diff_pos = dx + self.pos[0], dy + self.pos[1]
        #1, 1
        new_moves = []

        until !valid_pos(diff_pos)
            diff_pos += [dx, dy]
            new_moves << grow_unblocked_moves_in_dir(diff_pos[0], diff_pos[1])
        end 
        new_moves 
    end

end


          #return an array = 
        #recurisve 
        #we can take enemy piece -- include where enemy is 
        # return an array
        #call self.board, self.color, self.pos

        #can't take same colored piece 
        #if color is same color, don't take it


            #  row = self.pos[0] + move[0]
            #     col = self.pos[1] + move[1]
                # new_pos = [row, col]