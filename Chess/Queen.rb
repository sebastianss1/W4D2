require_relative'./Piece.rb'
require_relative './Slideable'

class Queen < Piece 
    include Slideable


    def move_dirs 
        #combines both ohrizontal and digaonal direction arrays 
       horizontal_dirs + diagonal_dirs
    end 







end 