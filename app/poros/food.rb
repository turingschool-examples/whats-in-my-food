class Food

  attr_reader :description,
              :brand,
              :ingredients,
              :gtinUpc,
              :total
  def initialize (foods, total)
    @description = foods[:description]
    @brand = foods[:brandOwner]
    @ingredients = foods[:ingredients]
    @gtinUpc = foods[:gtinUpc]
    @total = total
  end
end
