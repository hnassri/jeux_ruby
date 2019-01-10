def half_pyramid
    puts "S'il vous plaît, choisissez un nombre entre 1 et 25."
    print "> "
    number = gets.chomp.to_i
    x = 1
    until number >=1 && number <= 25
        puts "Ce nombre n'est pas compris entre 1 et 25, veuillez réessayer :"
        print "> "
        number = gets.chomp.to_i
    end  

    number.times do
        puts    " " *(number - x ) +  "#" * x
        x += 1         
    end
end
def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? S'il te plaît, choisis un nombre entre 1 et 25."
    print "> "
    number = gets.chomp.to_i
    x = 1
    until number >=1 && number <= 25
        puts "Ce nombre n'est pas compris entre 1 et 25, veuillez réessayer :"
        print "> "
        number = gets.chomp.to_i
    end  
    number.times do
        puts    " " *(number - x ) +  "#" * x  + "#" * (x-1) + " " * (number - x)
        x += 1   
    end
end
def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print "> "
    number = gets.chomp.to_i
    x = 1
    until number % 2 != 0
        puts "Ce nombre n'est pas impair, veuillez réessayer :"
        print "> "
        number = gets.chomp.to_i
    end  
    num = number / 2 
    (num+1).times do
        puts    " " *(number - x ) +  "#" * x  + "#" * (x-1) + " " * (number - x)
        x += 1
    end
    x = number /2  
    num.times do
        puts    " " *(number - x ) +  "#" * x  + "#" * (x-1) + " " * (number - x)
        x -= 1 
    end
end
def perform
    half_pyramid
    full_pyramid
    wtf_pyramid
end
perform