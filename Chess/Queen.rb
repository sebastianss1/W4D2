require_relative'./Piece.rb'

class Queen < Piece 
    include Slideable


    def move_dirs 
        #combines both ohrizontal and digaonal direction arrays 
       horizontal_dirs + diagonal_dirs
    end 







end 