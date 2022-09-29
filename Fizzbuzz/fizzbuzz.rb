# require 'rspec/autorun'

class Fizzbuzz
        def calculator(n)
            if n%3 == 0 &&  n%5 == 0
                print "Fizzbuzz"
       
            elsif n%3 == 0
                print "Fizz"
            
            elsif n%5 == 0
                print "Buzz"
            else
                print n
        end
 end
 Array(1..100).map do |n|
    start = Fizzbuzz.new.calculator(n)
    puts start
end
end
puts Fizzbuzz.new.calculator(39)