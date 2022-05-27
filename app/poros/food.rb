class Food
  attr_reader :name,
              :code,
              :description,
              :brand_owner,
              :ingredients

  def initialize(data)
    @name = data[:brandName]
    @code = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
