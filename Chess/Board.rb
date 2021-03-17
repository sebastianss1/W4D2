require "byebug"
require_relative "./Piece.rb"

class Board

    def self.populate
        empty_board = Array.new(8) { Array.new(8, [nil]) } 
        empty_board.each_with_index do |row, idx1|
            row.each_with_index do |ele, idx2|
                if idx1 == 0 || idx1 == 1 || idx1 == 6 || idx1 == 7
                    empty_board[idx1][idx2] = Piece.new 
                end
            end
        end
        empty_board
    end 



    attr_reader :board


    def initialize
        @board = Board.populate
    end 

    def [](pos)
        row, col = pos
        @board[row][col]
    end

     def []=(pos , value)
        row = pos[0]
        col = pos[1]
        @board[row][col] = value
    end
        

    def valid_pos?(pos)
        p "inside valid-pos"
        r = pos[0]
        c = pos[1]
        if r > board.length-1 || r < 0 
            return false
        elsif c > board.length-1 || c < 0 
            return false
        end
        true
    end



    def move_piece(start_pos, end_pos)
        # debugger
        if !valid_pos?(start_pos) || self[start_pos] == [nil] 
            raise "Select a valid starting position"
        else
            if !valid_pos?(end_pos) || !(self[end_pos] == [nil])
                raise 'Select a valid end position'
            else 
                self[end_pos] = self[start_pos]
                self[start_pos] = [nil]
            end 
        end
       
    end
end 

# p b = Board.new
# p b.move_piece([9,0], [8,0])




    # BOARD_PIECES = { #may need to make pieces 'dynamic', placeholder values
    #     :KING => [[0,3], [7,3]],
    #     :QUEEN => [[0,4], [7, 4]],
    #     :KNIGHT => [[0,1], [0, 6], [7,1], [7, 6]],
    #     :ROOK => [[0,0], [0,7], [7,0], [7,7]],
    #     :BISHOP => [[0,2], [0,5], [7,2], [7,5]],
    # }