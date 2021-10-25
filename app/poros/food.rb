class Food
  attr_reader :upc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(food)
    @upc = food[:gtinUpc]
    @description = food[:description]
    @brand_owner = food[:brandOwner]
    @ingredients = food[:ingredients]
  end
end
