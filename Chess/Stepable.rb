require_relative './Board.rb'
require_relative './Piece.rb'

# class NotImplementedError < StandardError 

# end 

module Stepable

    KING_DIFFS = [
        [0, -1], #left
        [0, 1], #right
        [-1,0], #up
        [1, 0], #down
        [-1, -1], #left up
        [-1, 1], #right up
        [1, -1],#left down
        [1, 1], #right down
    ].freeze
    KNIGHT_DIFFS = [
        [2,1],
        [1,2], 
        [2,-1], 
        [-1,2],
        [-1,-2], 
        [-2,-1], 
        [1,-2], 
        [-2,1] 
    ].freeze

        def king_diffs
            KING_DIFFS
        end 
        def knight_diffs
            KNIGHT_DIFFS
        end 

    def moves
        # debugger
        possible_moves = []
        self.move_diffs.each do |move|
            row = pos[0] + move[0]
            col = pos[1] + move[1]
            new_pos = [row, col]
            if board.valid_pos?(new_pos)
                if board[new_pos] != [nil] && self.color != board[new_pos].color
                    possible_moves << [new_pos] 
                    break
                elsif board[new_pos] != [nil] && self.color == board[new_pos].color
                    break
                end 
                possible_moves << new_pos 
            end 

        end 
        possible_moves
    end

    private 


    # def move_diffs
    #     raise NotImplementedError => e
    #         e.message
    # end 

end
