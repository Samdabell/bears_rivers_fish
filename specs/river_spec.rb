require "minitest/autorun"
require "minitest/rg"

require_relative "../river"
require_relative "../fish"
require_relative "../bears"

class RiverTest < MiniTest::Test
  def setup
    @fish_1 = Fish.new("Steve")
    @fish_2 = Fish.new("Paul")
    @fish_3 = Fish.new("Sebastian")

    @fish = [@fish_1, @fish_2, @fish_3]

    @river = River.new("Amazon", @fish)

  end

  def test_get_name()
    assert_equal("Amazon", @river.name())
  end

  def test_find_fish()
    assert_equal(["Steve", "Paul", "Sebastian"], @river.fish())
  end

  def test_fish_amount()
    assert_equal(3, @river.fish_amount())
  end

  def test_remove_fish()
    @river.remove_fish(@fish_3)
    assert_equal(2, @river.fish_amount())
  end

end