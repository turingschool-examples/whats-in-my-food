class Food 
  attr_reader :upc_code,
              :description, 
              :brand_owner,
              :ingredients

  def initialize(attributes)
    @upc_code = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end