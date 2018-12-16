require 'minitest/autorun'
require 'minitest/pride'
require './lib/item.rb'

class ItemTest < Minitest::Test

  def test_item_creation_using_defaults
    item_data = {id: 1, name: "Norm's Famous", type: "donut", ppu: 0.65 }
    ncronut = Item.new(item_data)
    assert_equal 1, ncronut.id
    assert_equal "Norm's Famous", ncronut.name
    assert_equal "donut", ncronut.type
    assert_equal 0.65, ncronut.ppu
  end


end
