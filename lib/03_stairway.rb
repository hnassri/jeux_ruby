def debut
    puts "On va faire un jeu! Tu vas lancer le dé! Voici ton chiffre:"  
end

def result
    numerocase = 0
    de = 0
    while numerocase >=0 && numerocase <10
        de = rand(1..6)
        if de == 5 || de == 6
            puts "Tu avances d'une case!"
            numerocase += 1
            puts "Te voilà sur la case " + numerocase.to_s    
        elsif de == 1
             puts "Tu descends d'une case!"
             numerocase -= 1
             if numerocase <0
                numerocase = 0
             end
             puts "Te voilà sur la case " + numerocase.to_s
         else 
             puts "Rien ne se passe!"
             puts "Tu restes sur la case " + numerocase.to_s
        end
    end
end

def victoire
    if numerocase = 10
        puts "Tu es sur la case 10, tu as gagné!"
    end
end

def average_finish_time
    somme = 0
    100.times do
        numerocase = 0
        de = 0
        nb_lancer_de = 0
        
        while numerocase >=0 && numerocase <10
            de = rand(1..6)
            if de == 5 || de == 6
                 numerocase += 1   
            elsif de == 1
                numerocase -= 1
                if numerocase <0
                    numerocase = 0
                end
            else 
            end
            nb_lancer_de += 1
        end
        somme += nb_lancer_de
    end
    moyenne = somme / 100
    puts "La moyenne est de " + moyenne.to_s + " lancers par partie."
end


def perform
    debut
    result
    victoire
    average_finish_time
end

perform