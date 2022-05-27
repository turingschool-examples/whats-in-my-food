class Food
  attr_reader :gtinUpc,
              :description,
              :brandOwner,
              :ingredients
              
  def initialize(foods)
    @gtinUpc = foods[:gtinUpc]
    @description = foods[:description]
    @brandOwner = foods[:brandOwner]
    @ingredients = foods[:ingredients]
  end
end


# - The food's GTIN/UPC code
#  - The food's description
#  - The food's Brand Owner
#  - The food's ingredients
