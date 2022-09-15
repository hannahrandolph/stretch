require_relative 'dragon'
class Game
    
    attr_reader :dragon

    def initialize
        @dragon = Dragon.new
    end

    def start
        welcome
        status
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
        
    end

    def choice
    
    end

    

    # def choose_action

    # end
end
Game.new.start