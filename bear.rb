class Bear

attr_reader :name, :type, :stomach, :food_count, :speech

  def initialize(name, type, stomach = [])
    @name = name
    @type = type
    @stomach = stomach
    @food_count = 0
  end

  def check_stomach_contents()
    @stomach.count
  end

  def take_fish(fish)
    @stomach << (fish)
  end

  def increase_food_count(amount)
    @food_count += amount
  end

  def check_food_count
    @food_count + @stomach.count 
  end

  def speech
    return "ROAR"
  end

end
