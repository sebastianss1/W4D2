require_relative "./Pieces/Piece.rb"
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

    def valid_pos?(pos)
        r = pos[0]
        c = pos[1]
        if r > board.length-1 || r < 0 
            return false
        elsif c > board.length-1 || c < 0 
            return false
        end
        true
    end

    def [](pos)
        r,c = pos[0],pos[1]
        board[r][c]
    end
        

    def move_piece(start_pos, end_pos)
        if start_pos.nil? || !valid_pos?(start_pos)
            raise "Select a valid starting position"
        elsif
            !valid_pos?(end_pos) && !end_pos.nil?
            raise 'Select a valid end position'
        else
            board[start_pos], board[end_pos] = board[end_pos], board[start_pos]
        end
    end


end 