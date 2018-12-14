require 'minitest/autorun'
require 'minitest/pride'
require './lib/make_cronuts.rb'

class MakeCronutsTest <  Minitest::Test

  def test_it_starts_with_json_data
    job      = MakeCronuts.new
    data     = job.startup_data("./data/cronut.json")
    actual   = data.count
    expected = 3
    assert_equal expected, actual
  end

  def test_it_makes_ingredients
    job      = MakeCronuts.new
    data     = job.startup_data("./data/cronut.json")

    job.make_ingredients
    assert_equal 4, job.batters.count
    assert_equal 7, job.toppings.count



  end

end
