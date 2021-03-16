class Board

    BOARD_PIECES = {
        :KING => [[0,3], [7,3]],
        :QUEEN => [[0,4], [7, 4]],
        :KNIGHT => [[0,1], [0, 6], [7,1], [7, 6]],
        :ROOK => [[0,0], [0,7], [7,0], [7,7]],
        :BISHOP => [[0,2], [0,5], [7,2], [7,5]]
    }


    def self.populate
       empty_board = Array.new(8) { Array.new(8, []) } 

        BOARD_PIECES.each do |key , value|
            value.each do |pos|
                empty_board[pos[0]][pos[1]] = key
            end
        end 
        empty_board
    end 

    def initialize
        @board = Board.populate


      
        #row 0, 1, 6, 7 will be populated
        #row 0 and 7 are NOT pawns
        #row 1 and 6 are pawns 
        #rows 2 - 5 are empty aka nullpieces 
    end 




end 