class Food
  attr_reader :id, :description, :owner, :ingredients

  def initialize(data)
    @id = data[:gtinUpc]
    @description = data[:description]
    @owner = data[:brandOwner]
    @ingredients = data[:ingredients]

  end
end
