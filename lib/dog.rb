class Dog
  attr_accessor :walking, :vet, :owner, :leash, :plastic_bag, :vet_checkup
  
  def initialize(name, breed, owner_name)
    @name = name
    @breed = breed
    @walking = false
    @vet_checkup = false
    @leash = false
    @plastic_bag = false
    @owner = Owner.new(owner_name, self)
  end

  def name
    @name
  end

  def bark
    "Woof!"
  end

  def breed
    @breed
  end

  def walking?
    self.owner.walking
  end

  def vet_checkup?(name)
    name.vet_checkup
  end
end