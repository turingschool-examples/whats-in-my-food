class Food
  attr_reader :id, :gtinupc, :description, :brandowner, :ingredients

  def initialize(attributes)
    @id = attributes[:fdcId]
    @gtinupc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brandowner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end

end
