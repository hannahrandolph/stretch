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
 Array(1..100).map do |n|
    start = Fizzbuzz.new.calculator(n)
    puts start
end
end

