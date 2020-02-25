class River

  attr_reader :name, :river_contents, :fish_count

  def initialize(name, river_contents = [])
    @name = name
    @river_contents = river_contents
    @fish_count = @river_contents.count
  end

  def check_river_contents()
    @river_contents.count
  end

  def lose_fish(fish)
    @river_contents.delete(fish)
  end

  def increase_fish_count(amount)
    @fish_count += amount
  end

  def check_fish_count()
    return @fish_count
  end
end
