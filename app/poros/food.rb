class Food
  attr_reader :gtin, :description, :brandowner, :ingredients

  def initialize(data)
    @gtin = data[:gtinUpc]
    @description = data[:description]
    @brandowner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
