require './lib/import_data.rb'
require './lib/item.rb'
require './lib/batter.rb'
require './lib/topping.rb'

class MakeCronuts
  include ImportData

	attr_reader :data_in, :batters, :toppings, :items, :batters_list, :toppings_list

  def startup_data(path)
    @data_in ||= import_json(path)["items"]["item"]
  end

  def make_items
    @items = []
    @data_in.each do |item|
      Item.new
    end
  end

  def list_ingredients
    @batters_list  = list_batters
    @toppings_list = list_toppings
  end

  def list_batters
    ingredients_out = []
    @data_in.each do |item|
      item["batters"].each do |batter|
        batter[1].each do |ingredient|
          ingredients_out << ingredient["type"]
        end
      end
    end
    ingredients_out.uniq
  end

  def list_toppings
    ingredients_out = []
    @data_in.each do |item|
      item["topping"].each do |ingredient|
        ingredients_out << ingredient["type"]
      end
    end
    ingredients_out.uniq
  end

end
