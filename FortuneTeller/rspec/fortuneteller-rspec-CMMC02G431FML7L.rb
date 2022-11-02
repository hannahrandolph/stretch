require 'rspec/autorun'

class FortuneTeller
    attr_reader :fortunes
     

    public 

    def start
        welcome
        name
        age
        color
        money
        fortune
   
    end

    def welcome
        puts "Welcome! I saw you coming in my crystal ball \n I'll be ready to share with you what your future holds with only a few questions! \n Let's get started...\n\n"
    end

    def name
        print "First things first, I'll need you to remind me of your name...  "
        @name = gets.chomp.capitalize!
        puts "Ah yes, thank you for the reminder! \n\n"
    end

    # Age input - checks that input is integer - adds random number between 1-75 to age to find when user will die
    def age
        print "Now #{@name}, I'll need that age of yours... "
        
        begin
            @input_age = gets.chomp
            @input_age = Integer(@input_age)
        rescue => exception
            print "Come on now, you know your age has to be a number! Now be honest, what's your REAL age? ... "
            retry
        end

        puts "Wow! #{@input_age}!? i thought I noticed some grey hairs on your head!\n\n"
        @age_out = @input_age.to_i + rand(1..50)
    end

    # Color input - hash created for color options - checks user input matches the choices - asssigns the color number to how many children someone will have
    def color
        color_hash = {"Blue" => 1, "Red" => 2, "Green" => 3}
       
        puts "Last, but certainly not least, I'm dying to know, out of Blue, Red, or Green, which color sparks the most joy?"
    
        
        
        begin
            @color = gets.chomp.capitalize!
             color_hash.include?(@color) 
                @children = color_hash[@color] * rand(1..10)
        rescue => exception
            puts "While I'm sure that's a beautiful color, that's not one of the choices \nPlease choose, Blue, Red, or Green"
            retry
        end
    

        puts "Fabulous choice! I have always loved #{@color} as well!\n\n"
    end    
    
    #number of children multiplied by random number 1-999 will be amount of money left
    
    def money
        @money = @children.to_i * rand(1..999)
        @money_left = @money.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    end

    def fortune
        puts "I have all of the information needed to share with you your ultimate fate \n Let me consult my crystal ball at once... \n... \n Hmm... \n Ah yes... \n Only a moment more... \n ...\n....\n.....\n......\n.......\n\n"
        
        puts "#{@name}, you will die at the ripe age of #{@age_out} leaving behind #{@children} children with $#{@money_left},000 in the bank."
    end

end

describe FortuneTeller do
    let(:fortuneteller) {FortuneTeller.new}

        it "returns foo as input" do
            allow($stdin).to receive(:gets).and_return('foo')
            name = $stdin.gets
            expect(name).to eq('foo')
        end

        
    
end
