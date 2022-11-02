require 'rspec/autorun'

class Fortunes
    attr_accessor :color, :children, :money

def initialize
    @children = rand(1..15)
    @money = rand(1..999)
end

end
