require 'minitest/autorun'
require 'minitest/pride'
require './lib/make_cronuts.rb'

class MakeCronutsTest <  Minitest::Test

  def test_it_starts_with_json_data
    job      = MakeCronuts.new
    data     = job.startup_data("./data/cronut.json")
    actual   = data["items"].count
    expected = 1
    require "pry"; binding.pry
    assert_equal expected, actual
  end

end
