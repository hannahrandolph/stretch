class Game
    attr_writer :start
    attr_reader :welcome

    def initialize(start, welcome)
        @@start = start
        @@welcome = welcome
    end 
    
    def welcome_message
        puts "Welcome to Gigapet!"

        
    end

    def start
    end

    def choose_action

    end
end