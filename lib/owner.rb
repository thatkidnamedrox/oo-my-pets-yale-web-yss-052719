class Owner
  # code goes here
  @@all = []

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
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

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets

    fish_count = @pets[:fishes].size
    cat_count = @pets[:cats].size
    dog_count = @pets[:dogs].size
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end


end
