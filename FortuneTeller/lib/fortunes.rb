class Fortunes
    attr_accessor :color, :children, :money

def initialize
    @children = rand(1..15)
    @money = rand(1..999)
end

end

#based on how I am structuring the fortuneteller class, I will likely delete and/or re-work this 