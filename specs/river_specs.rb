require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bear')



class TestRiver < Minitest::Test

  def setup()
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Haddock")
    @fish3 = Fish.new("Pilock")
    fish_in_river = [@fish1, @fish2, @fish3]
    @river1 = River.new("Amazon", (fish_in_river))
    @bear1 = Bear.new("Fuzzy", "Polar Bear")
  end

  def test_name()
    assert_equal("Amazon", @river1.name)
  end

  def test_check_river_contents()
    assert_equal(3, @river1.check_river_contents())
  end
# bear should be able to take a fish from the river
# river should lose a fish when a bear takes a fish
# bear could have a food_count method
# river could have a fish_count method
  def test_lose_fish()
    @river1.lose_fish(@fish1)
    assert_equal(2,@river1.check_river_contents())
  end

  def test_take_fish()
    @bear1.take_fish(@fish1)
    assert_equal(1, @bear1.check_stomach_contents())
  end

  def test_increase_fish_count()
    @river1.increase_fish_count(2)
    assert_equal(5, @river1.check_fish_count())
  end

  def test_check_fish_count()
    assert_equal(3, @river1.check_fish_count)
  end

  def test_bear_eating_fish()
    @bear1.take_fish(@fish1)
    @river1.lose_fish(@fish1)

    assert_equal(1, @bear1.check_stomach_contents())
    assert_equal(2,@river1.check_river_contents())
    assert_equal(3, @river1.check_fish_count)
    p @bear1
    assert_equal(1, @bear1.check_food_count())
  end
end
