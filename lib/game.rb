require 'pry'

#TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player)
#, le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant
# les 2 joueurs.
class Game
  attr_accessor :board, :arr_player, :current_player


  def initialize(player1_name,player2_name)
  #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un 
  
    @arr_player = []
    @arr_player <<  Player.new(player1_name,"X")
    @arr_player <<  Player.new(player2_name,"O")
    @board = Board.new
    @current_player = arr_player[0]
  
  end

 

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à 
    # l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il 
    # joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie 
    # n'est pas finie.
    the_board = Show.new.show_board(@board) # affiche le plateau
    
    @board.play_turn(@current_player) # erreur ici ?
    is_victory = @board.victory?
    if @board.victory? == false
      if @current_player == arr_player[0] # si on est player0 on passe au player1 sinon on passe au 0
        @current_player = arr_player[1]
      else
        @current_player = arr_player[0]
      end
    end
    return is_victory

  end


    

  def game_end
    
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou 
    #si il y a match nul

    if board.full? && board.victory? == false   
      puts "----- Partie terminée... comme personne n'a gagné le Démon a dévoré votre âme à tous les deux 😈 !"
    else
      puts "----- Bravo tu as gagné #{current_player.name} ! L'âme de ton adversaire est dévorée par le démon ! 😈---- "
    end
    
  end
        
  
end

