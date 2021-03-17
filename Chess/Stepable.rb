class NotImplementedError < StandardError 

end 

module Stepable

    def moves
        possible_moves = []
        self.move_diffs.each do |move|
            row = self.pos[0] + move[0]
            col = self.pos[1] + move[1]
            new_pos = [row, col]
            if board.valid_pos?(new_pos)
                possible_moves << new_pos 
            end 
        end 
        possible_moves
    end

    private 


    def move_diffs
        raise NotImplementedError => e
            e.message
    end 

end
