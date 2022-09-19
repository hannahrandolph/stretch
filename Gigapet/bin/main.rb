
#!/usr/bin/env ruby
 
 
$LOAD_PATH.unshift(
    File.expand_path(
      '../../lib',
      __FILE__
    )
  )


require 'game.rb'
Game.initialize
# Game.start - undefined method `start' for Game:Class (NoMethodError)

