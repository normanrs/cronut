class Item

    	attr_reader :id,
    							:name,
                  :type,
                  :ppu,
                  :toppings,
                  :batters

  	def initialize(data, toppings = [], batters = [])
  		@id       = data[:id]
  		@name     = data[:name]
      @type     = data[:type]
      @ppu      = data[:ppu]
      @toppings = toppings
      @batters  = batters
  	end

end
