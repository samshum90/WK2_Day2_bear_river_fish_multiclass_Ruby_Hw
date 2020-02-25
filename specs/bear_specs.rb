require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../fish')

class TestBear < Minitest::Test

  def setup
    @bear1 = Bear.new("Fuzzy", "Polar Bear")

    @fish1 = Fish.new("Salmon")

  end

  def test_name()
    assert_equal("Fuzzy", @bear1.name)
  end

  def test_type
    assert_equal("Polar Bear", @bear1.type)
  end

  def test_check_stomach_contents()
   assert_equal(0, @bear1.check_stomach_contents())
  end

  def test_increase_food_count
    @bear1.increase_food_count(3)
    assert_equal(3, @bear1.check_food_count())
  end

  def test_speech()
    assert_equal("ROAR", @bear1.speech)
  end

end
