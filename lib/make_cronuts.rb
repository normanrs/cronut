require './lib/import_data.rb'
require './lib/item.rb'
require './lib/batter.rb'
require './lib/topping.rb'

class MakeCronuts
  include ImportData

	attr_reader :data_in, :batters, :toppings

  def startup_data(path)
    @data_in = import_json(path)["items"]["item"]
  end

  def make_ingredients
    @batters  = make_batters
    @toppings = make_toppings
  end

  def make_batters
    @data_in.each do |item|
      item["batters"].each do |batter|
        batter[1].map do |ingredient|
          ingredient["type"]
        end
      end
    end
  end

  def make_toppings
    @data_in.each do |item|
      item["toppings"].each do |topping|
        topping[1].map do |ingredient|
          ingredient["type"]
        end
      end
    end
  end

end
