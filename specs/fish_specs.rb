require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')

class TestFish < Minitest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Haddock")
    @fish3 = Fish.new("Pilock")
  end

  def test_name
    assert_equal("Salmon", @fish1.name)
  end

end
