class Owner
  # code goes here
  @@all = []

  attr_accessor :pets

  def initialize()
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def buy_cat(name)
    pet = Cat.new(name)
    @pets << pet
  end

  def buy_dog(name)
    pet = Dog.new(name)
    @pets << pet
  end

  def buy_fish(name)
    pet = Fish.new(name)
    @pets << pet
  end

end
