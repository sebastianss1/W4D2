require_relative './Board.rb'
require_relative './Piece.rb'
module Slideable

    HORIONTAL_DIRS = [
        [0,-1], #left
        [0,1], #right
        [-1,0], #up
        [1,0], #down
    ].freeze

    DIAGONAL_DIRS = [
        [-1,-1], #left up
        [-1, 1], #right up
        [1, -1], #left down
        [1, 1], #right down
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
    
    def grow_unblocked_moves_in_dir(dx, dy) #[0,0] [1,1]
        # debugger
        unblocked_moves = []
        i = dx+ self.pos[0] #-1
        j = dy + self.pos[1] #-1
        while board.valid_pos?([i,j])
            if board[[i,j]] != [nil] && self.color != board[[i,j]].color
                unblocked_moves << [[i,j]] 
                break
            elsif board[[i,j]] != [nil] && self.color == board[[i,j]].color
                break
            else
                unblocked_moves << [i,j] 
            end
            i+= dx 
            j+= dy 
        end
        unblocked_moves
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