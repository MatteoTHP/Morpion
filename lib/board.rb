require 'pry'
#TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
#Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour 
# compter le nombre de coups joué

class Board

  attr_accessor :board_cases
  
  
  #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
  #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe

  def initialize
    @board_cases = []
    board_names = ["A1", "A2", "A3","B1","B2","B3","C1","C2","C3"] 
    board_names.each do |name|
    @board_cases << Boardcase.new(name)
    end
    
    
  end

  def play_turn(toto)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    board_case_to_change = nil
    
    
    while board_case_to_change == nil
      puts "#{toto.name},Quelle case choissisez vous ?"
      choice = gets.chomp
     
      board_case_to_change = @board_cases.find {|bo_case| bo_case.case_id == choice && bo_case.string_value == " "}
    
    end
    
    board_case_to_change.string_value = toto.symbol

  end


  def victory?
    
     #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
     
    if (@board_cases[0].string_value == @board_cases[1].string_value && @board_cases[0].string_value == @board_cases[2].string_value && @board_cases[0].string_value != " ") || (@board_cases[3] == @board_cases[4].string_value && @board_cases[3].string_value == @board_cases[5].string_value && @board_cases[3].string_value != " ") || (@board_cases[6].string_value == @board_cases[7].string_value && @board_cases[6].string_value == @board_cases[8].string_value && @board_cases[6].string_value != " ") || (@board_cases[0].string_value == @board_cases[3].string_value && @board_cases[0].string_value == @board_cases[6].string_value && @board_cases[0].string_value != " ") || (@board_cases[1].string_value == @board_cases[4].string_value && @board_cases[1].string_value == @board_cases[7].string_value && @board_cases[1].string_value != " ") || (@board_cases[2].string_value == @board_cases[5].string_value && @board_cases[2].string_value == @board_cases[8].string_value && @board_cases[2].string_value != " ") || (@board_cases[0].string_value == @board_cases[4].string_value && @board_cases[0].string_value == @board_cases[8].string_value && @board_cases[0].string_value != " ") || (@board_cases[2].string_value == @board_cases[4].string_value && @board_cases[2].string_value == @board_cases[6].string_value && @board_cases[2].string_value != " ")
      return true
    else
      return false
    end
  end
  
  def full?
    return @board_cases.find {|b_case| b_case.string_value == " "} == nil
     
  end

end

