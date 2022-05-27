class Food
  attr_reader :id, :gtinupc, :description, :brandowner, :ingredients

  def initialize(attributes)
    @id = attributes[:id]
    @gtinupc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brandowner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end

end
