$:.push('.')

require 'morphio'
require 'api_key'



morph = Morphio.new(MORPHIO_API_KEY,'mbb1982/abrail')
puts morph.query('select * from stock')

