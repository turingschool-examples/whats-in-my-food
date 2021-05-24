class Food
  attr_reader :code, :description, :owner, :ingredients
  def initialize(data)
    @code = data[:gtinUpc]
    @description = data[:description]
    @owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
