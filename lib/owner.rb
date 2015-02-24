class Owner
  attr_accessor :name, :dog, :leash, :plastic_bag

  def initialize(name, dog)
    @name = name
    @dog = dog
    @leash = false
    @plastic_bag = false
  end

  def prepare_items
    @leash = true
    @plastic_bag = true
    self.dog.leash = true
    self.dog.plastic_bag = true
  end

  def walk
    prepare_items
    self.dog.walking = true
  end

  def vet_checkup
    prepare_items
    self.dog.vet_checkup = true
  end

  def walking?
    !!walk
  end
end
