require "minitest/autorun"
require "minitest/rg"

require_relative "../river"
require_relative "../fish"
require_relative "../bears"

class FishTest < MiniTest::Test
  def setup
    @fish_1 = Fish.new("Steve")
    @fish_2 = Fish.new("Paul")
    @fish_3 = Fish.new("Sebastian")

  end

  def test_get_name()
    assert_equal("Steve", @fish_1.name())
  end

end