class FoodPoro
  attr_reader :upc, 
              :description, 
              :brand_owner, 
              :ingredients

  def initialize(data)
    @upc = data[:gtin_upc]
    @description = data[:description]
    @brand_owner = data[:brand_owner]
    @ingredients = data[:ingredients]
  end
end