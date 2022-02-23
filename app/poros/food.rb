class Food
  attr_reader :upc,
              :description,
              :brand,
              :ingredients

  def initialize(data)
    @upc = data[:gtinUpc]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
