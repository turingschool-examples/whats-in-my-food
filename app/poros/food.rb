class Food 
  attr_reader :gtin_upc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(data)
    @gtin_upc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients