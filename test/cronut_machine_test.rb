require 'minitest/autorun'
require 'minitest/pride'
require './lib/make_cronuts.rb'

class MakeCronutsTest <  Minitest::Test

  def setup
    @job      = MakeCronuts.new
    @data     = job.startup_data("./data/cronut.json")

  end

  def test_it_starts_with_json_data
    actual   = @data.count
    expected = 3
    assert_equal expected, actual
  end

  def test_it_lists_ingredients
    @job.list_ingredients
    assert_equal 6, @job.batters.count
    assert_equal 7, @job.toppings.count

  end

  def test_it_makes_nested_items
    job.make_items


  end

end
