require_relative 'fortunes'

class FortuneTeller
    attr_reader :fortunes
    
    #some sort of color array will be here 

    public 
    def initialize
        @fortunes = Fortunes.new
    end 

    def start
        welcome
        inputs
        age_out
        children
        fortune
    end

    def welcome
        puts "Welcome in! I saw you coming in my crystal ball"
        puts "I'll be ready to share with you what your future holds with only a few questions!"
        puts "Let's get started...\n"
    end

    def inputs
        print "First things first, I'll need you to remind me of your name...  "
        @name = gets.chomp.capitalize!
        puts "Ah yes, thank you for the reminder!"
        puts "\n"
        print "Now #{@name}, I'll need that age of yours... "
        @inputage = gets.to_i
        puts "Wow! #{@inputage} already! Seems like just yesterday you were a child!"
        puts "\n"
        puts "The last piece of information I need to see your future is your favorite color"
        @color = gets.chomp
        puts "Fabulous choice! I have always loved #{@color} as well!"
        puts "\n"
        puts "I have all of the information needed to share with you your ultimate fate"
        puts "Let me consult my crystal ball at once..."
        puts "..."
        puts "Hmmm... "
        puts "Ah yes..."
        puts "Only a moment more..."
        puts "..."
        
    end    

    #decides age of death
    def age_out
        @age_out = @inputage + rand(1..75)
    end
    
    #where color choice will decide how many children you will have
    def children
        
    end

    #number of children will decide how much money you will have
    def money

    end

    def fortune
        puts "#{@name}, you will die at the ripe age of #{@age_out} leaving behind #{fortunes.children} children with $#{fortunes.money},000 in the bank."
    end

end