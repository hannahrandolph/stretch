class Gigapet
    attr_reader :feed
    attr_reader :walk
    attr_reader :play
    attr_reader :cuddle
    attr_writer :choice


    def initialize(feed=5, walk=0, fun=5, cuddle=5)
      @@feed = feed
      @@walk = walk
      @@play = play
      @@cuddle = cuddle
      @@choice = choice
    end
    def choose
    puts "Welcome to Gigapet! Choose one: feed, walk, play, cuddle "
    choice = gets.chomp
    end
end

    
    case choice
    when "feed"
        if feed<=5
          feed = feed +=1
          puts "Om, nom, nom. Thanks!"
        else
          puts "I can't eat another bite!"
        end
    when "walk"
        walk +=1
        feed -=1
        if feed==0
          puts "I'm too hungry to go on a walk :("
        else
          puts "Yippee! Let's go on a walk!"
        end
    when "play"
        play +=1
        feed -=1
        cuddle +=1
        if feed==0
          puts "I'm too hungry to play :("
        else
          puts "Yippee! Let's play"
        end
    when "cuddle"
        feed -=1
        cuddle +=1
        if feed==0
          puts "I'm too hungry to have my belly scratched :("
        else
          puts "Yippee! Let's cuddle!"
        end
    else
        puts "I didn't quite understand that!"
    
    end    

