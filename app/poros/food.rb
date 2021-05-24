class Food
  attr_reader :upc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(data)
    @upc = data[:gtinUPC]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
