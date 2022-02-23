class Food
  attr_reader :gtin,
              :description,
              :brand_owner,
              :ingredients
  def initialize(data)
    @gtin = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end