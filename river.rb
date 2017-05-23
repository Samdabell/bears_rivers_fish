class River
  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def name()
    return @name
  end

  def fish()
    fish_names = []
    for fishes in @fish
      fish_names << fishes.name()
    end
    return fish_names
  end

  def fish_amount()
    return @fish.length()
  end

  def remove_fish(fish)
    for fishes in @fish
      if fishes == fish
        @fish.delete(fish)
      end
    end
  end
end