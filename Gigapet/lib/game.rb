require_relative 'dragon'
class Game
    
    attr_reader :dragon
    
    public def initialize
        @dragon = Dragon.new
    end

    def start
        welcome
        status
        loop do 
         choose
         break if @choice == "quit"
        end
    end

    def welcome
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "*  Welcome to Gigapet!    *"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        
    end
    
    def status
        puts "\n"
        puts "Here's how I'm doing! \n"
        puts "Hunger: #{dragon.hunger} "
        puts "Energy: #{dragon.energy}"
        puts "Affection: #{dragon.affection}"
        puts "Fun: #{dragon.fun}"
        puts "\n"
        puts "Status:"
        puts "#{dragon.needs}"
        puts "\n"
        
    end

    def choose
        puts "\n"
        print "Choose an action to take care of me: Feed, walk, cuddle or play! (Quit to exit)  " #fix the wording of this
        @choice = gets.chomp
        puts "You chose #{@choice}"
        puts "\n"

        case @choice
        when "feed"
            if dragon.hunger<=5
                dragon.hunger = dragon.hunger += 1
              puts "Om, nom, nom. Thanks!"
            else
              puts "I can't eat another bite!"
            end
        when "walk"
            dragon.energy +=1
            dragon.hunger -=1
            if dragon.hunger==0
              puts "I'm too hungry to go on a walk :("
            else
              puts "Yippee! Let's go on a walk!"
            end
        when "play"
            dragon.fun +=1
            dragon.hunger -= 1
            dragon.affection +=1
            if dragon.hunger==0
              puts "I'm too hungry to play :("
            else
              puts "Yippee! Let's play"
            end
        when "cuddle"
            dragon.hunger -=1
            dragon.affection +=1
            if dragon.hunger==0
              puts "I'm too hungry to cuddle :("
            else
              puts "Yippee! Let's cuddle!"
            end
        when "quit"

            puts "See ya later!! :) "
            exit
        else
            puts "I didn't quite understand that!"
        
        end 
        puts status
    end
end

Game.new.start