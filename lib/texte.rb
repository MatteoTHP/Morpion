
    Quels objets physiques pourraient être codés en objets Ruby => Cela te donnera des pistes pour définir tes classes ;

board


    Qu'est ce qui caractérise chaque objet de chaque classe identifiée (une couleur ? un nom ? un chiffre précis ?) => 
    Cela te donnera des pistes pour définir les variables d'instance de chacune de tes classes ;
game
board
boards cases


    Quelles actions ces objets vont-ils subir ? Par exemple un joueur va passer du statut de "c'est ton tour" à "c'est 
    le tour de l'autre", les cases vont se remplir, etc. => Cela te donnera des pistes de méthodes dont il va falloir 
    définir la fonction précise et la classe qui l'hébergera ;
    Liste de façon exhaustive les étapes d'une partie de morpion => Cela va t'aider à voir dans quel ordre les évènements
     doivent avoir lieu : on crée tel élément, on affiche ça, on modifie tel objet, etc.
    À partir de la liste ci-dessus, essaye aussi d'identifier les endroits qui tournent en boucle (par exemple les 
    joueurs qui remplissent le plateau à tour de rôle), ce qui change à chaque tour de boucle (quelle variable a changé 
      au tour précédent ?) et les conditions qui font qu'on sort de la boucle (par exemple si tel élément arrive à telle
      valeur, on arrête la boucle) => Cela te permettra déjà d'identifier les endroits où tu vas coder des boucles for / each
       (nombre de tour défini à l'avance) ou while (nombre de tour variable – selon l'utilisateur notamment).


















