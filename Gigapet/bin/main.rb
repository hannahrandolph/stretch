
#!/usr/bin/env ruby
 
 
$LOAD_PATH.unshift(
    File.expand_path(
      '../../lib',
      __FILE__
    )
  )


require 'game'
Game.initialize # runs through code then breaks when choice is made error message private method `initialize' called for Game:Class 
#Game.start # error message undefined method `start' for Game:Class (NoMethodError)

# can't quite figure out why this isn't working for me 

