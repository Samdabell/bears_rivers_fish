class Bear
  def initialize(name)
    @name = name
    @stomach = []
  end

  def name()
    return @name
  end

  def stomach()
    return @stomach.length()
  end

  def take_fish(river, fish)
    @stomach << fish
    river.remove_fish(fish)
  end

  def roar()
    return "ROAR"
  end
end