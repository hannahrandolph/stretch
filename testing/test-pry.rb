require 'pry'


class Practice

    def looping
        array = [1,4,5,7]
        array.each do |x|
        binding.pry
        end
    end

def numebr_guess
    number = rand(0..50)
    print "Guess a number between 0 and 50: "
    guess = gets.chomp.to_i

    binding.pry

   if number == guess
    puts "You win!"
   elsif number > guess
    puts "Too low!"
   else
    puts "Too high!"
   end
end


end
