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

  def buy_fish(name_of_fish)
    @pets[:fish] << Fish.new(name_of_fish)
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

  def sell_pets
    @pets.collect do |species, instances|
      instances.each do |dog|
        pet.mood = "nervous"
      end
      instances.clear
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
