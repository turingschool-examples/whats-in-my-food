class Food
  attr_reader :upc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(attributes)
    @upc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
