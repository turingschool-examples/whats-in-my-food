class Food

  attr_reader :gtin_upc,
              :description,
              :brand_owner,
              :ingredients,
              :foods

  def initialize(data)
    @gtin_upc    = data[:gitnUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
    @count       = data[:totalHits]
  end
end