require "minitest/autorun"
require "minitest/rg"

require_relative "../river"
require_relative "../fish"
require_relative "../bears"

class BearTest < MiniTest::Test
  def setup
    @fish_1 = Fish.new("Steve")
    @fish_2 = Fish.new("Paul")
    @fish_3 = Fish.new("Sebastian")

    @fish = [@fish_1, @fish_2, @fish_3]

    @river = River.new("Amazon", @fish)

    @bear = Bear.new("Yogi")

  end

  def test_get_name()
    assert_equal("Yogi", @bear.name())
  end

  def test_fish_in_stomach()
    assert_equal(0, @bear.stomach())
  end

  def test_take_fish_from_river()
    @bear.take_fish(@river, @fish_2)
    assert_equal(1, @bear.stomach)
    assert_equal(2, @river.fish_amount())
  end

  def test_roar
    assert_equal("ROAR", @bear.roar())
  end

end