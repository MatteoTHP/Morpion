# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) -
# ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/game.rb et lib/player.rb

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/show'
require_relative 'lib/board'
require_relative 'lib/boardcase'


class Application

  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while 
    #pour faire tourner le jeu tant que la partie n'est pas terminée.



    puts "🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥"
    puts "-------------------------------------------------"
    puts "| Bienvenue sur 'Le Tic Tac Toe des familles'!  |"
    puts "|  🔥 Si tu perds le Démon dévorera ton âme! 🔥 |"
    puts "-------------------------------------------------"
    puts "              😈...              by Satan ©️ "
    puts
    puts " Une petite partie de  morpion ?"
    puts 
    puts " Joueur 1, quel est votre nom ?"
    player1_name = gets.chomp
    puts " Joueur 2 , quel est votre nom ?"
    player2_name = gets.chomp
    my_game = Game.new(player1_name, player2_name)
    
    

    is_victory = false
    while is_victory == false && my_game.board.full? == false
      is_victory = my_game.turn
    end
    my_game.game_end

  end



end

Application.new.perform
