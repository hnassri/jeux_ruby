def signup 
    puts "Choisissez un mot de passe : "
    print "> "
    password  = gets.chomp
    return password
end
def login(password)
    
    puts "Entrez votre mot de passe :"
    print "> "
    mdp = gets.chomp
    until mdp == password
        puts "Ce n'est pas le bon mot de passe, veuillez réessayer: "
        print "> "
        mdp = gets.chomp
    end
end
def welcome_screen
    puts "Bienvenue dans votre zone secrète, si  vous avez atteint cette endroit, c'est que vous êtes un génie. Bienvenue dans l'équipe"
end
def perform

    puts "Avez vous déjà un compte? Tapez oui ou non." 
    print "> "
    text = gets.chomp

    
    if text == 'non'
       password = signup
    end
    
    puts login(password)
    welcome_screen        
    
    
end
perform