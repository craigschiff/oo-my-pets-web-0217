class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@owners << self
    @name
  end

  def species
    @species
  end

  def self.all
    @@owners
  end

  def buy_cat(name)
    pet = Cat.new(name)
    @pets[:cats] << pet
  end

  def buy_dog(name)
    pet = Dog.new(name)
    @pets[:dogs] << pet

  end

  def buy_fish(name)
    pet = Fish.new(name)
    @pets[:fishes] << pet

  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{species}."
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet_type, pet|
      pet.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
