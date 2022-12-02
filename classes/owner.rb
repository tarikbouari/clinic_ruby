class Owner
  attr_accessor :name, :animals, :id
  def initialize(name, _animals)
    @id = Ramdom.rand(1..1000)
    @name = name
    @animals = []
  end

  def add_animals(animal)
    @animals << animal
    animal.owner = self
  end
end
