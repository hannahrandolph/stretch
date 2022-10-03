$LOAD_PATH.unshift(
    File.expand_path(
      '../../lib',
      __FILE__
    )
  )


require 'fortuneteller'

FortuneTeller.new.start