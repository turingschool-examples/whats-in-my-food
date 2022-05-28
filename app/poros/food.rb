class Food
  attr_reader :gtinUpc,
              :description,
              :brandOwner,
              :ingredients

  def initialize(foods)
    @gtinUpc = foods[:gtinUpc]
    @description = foods[:description]
    @brandOwner = foods[:brandOwner]
    @ingredients = foods[:ingredients]
  end
end
