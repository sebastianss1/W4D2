require_relative'./Piece.rb'
require_relative './Slideable'

class Queen < Piece 
    include Slideable


    def move_dirs 
       horizontal_dirs + diagonal_dirs
    end 







end 