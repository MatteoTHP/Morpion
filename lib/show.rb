require 'pry'


class Show
  

  def show_board(instance)
    #TO DO : affiche sur le terminal l'objet de classe @Board en entrée. S'active
    # avec un Show.new.show_@board(instance_de_@Board)
    puts "--------------"
    puts "--|#{show_case(instance.board_cases[0])}|#{show_case(instance.board_cases[1])}|#{show_case(instance.board_cases[2])}|--"
    puts "--------------"
    puts "--|#{show_case(instance.board_cases[3])}|#{show_case(instance.board_cases[4])}|#{show_case(instance.board_cases[5])}|--"
    puts "--------------"
    puts "--|#{show_case(instance.board_cases[6])}|#{show_case(instance.board_cases[7])}|#{show_case(instance.board_cases[8])}|--"
    puts "--------------"
  end

  def show_case(board_case)
    if board_case.string_value == " "
      return board_case.case_id
    else
      board_case.string_value
    end
  end

end

