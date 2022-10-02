require 'rspec/autorun'

class Fizzbuzz
    def calculator(n)
        if (n % 3).zero? && (n % 5).zero?
            'Fizzbuzz'
          elsif (n % 3).zero?
            'Fizz'
          elsif (n % 5).zero?
            'Buzz'
          else
            n
    end
end
end


describe Fizzbuzz do
    let (:fizzbuzz) {Fizzbuzz.new}

    it "finds multiples of 5" do
        expect(fizzbuzz.calculator(25)).to eq('Buzz')
    end

    it "finds multiples of 3" do
        expect(fizzbuzz.calculator(9)).to eq('Fizz')
    end

    it "finds multiples of 3 and 5" do
        expect(fizzbuzz.calculator(15)).to eq('Fizzbuzz')
    end
end
