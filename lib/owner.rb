class Owner

  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    @pets.collect do |species, instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
      end
    end
  end
  end

  def play_with_cats
    @pets.collect do |species, instances|
      if species == :cats
        instances.each do |cat|
          cat.mood = "happy"
      end
    end
  end
  end

  def feed_fish
    @pets.collect do |species, instances|
      if species == :fishes
        instances.each do |fish|
          fish.mood = "happy"
      end
    end
  end
  end

  def sell_pets
    @pets.collect do |species, instances|
      species.mood = "nervous"
    end
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

end
