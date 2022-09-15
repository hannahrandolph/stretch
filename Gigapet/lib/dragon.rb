class Dragon
    attr_accessor  :hunger, :energy, :fun, :affection, :needs

    def initialize
        @hunger = rand(1..5)
        @energy = rand(1..5)
        @fun = rand(1..5)
        @affection = rand(1..5)
    end

    def needs
        if hunger <= 2 && affection <= 2
            print "I'm cranky! I need food and love! >:( "
        elsif hunger <= 2  && affection > 2
            print "Feeeed Meeeeee"
        else
            print "I'm feeling good!"
        end
    end
end