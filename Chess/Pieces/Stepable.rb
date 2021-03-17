module Stepable

    def moves(pos) #based on Piece.rb @pos) #0,0
        possible_moves = []

        self.move_diffs.each do |move|
            row = pos[0] + move[0]
            col = pos[1] + move[1]
        #valid within the board?
        if so possible_moves < move

            

    end

    private 
    # def move_diffs
    #     raise NotImplementedError




end
