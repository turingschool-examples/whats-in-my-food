class Food
  attr_reader :gtinUpc,
              :description,
              :brandOwner,
              :ingredients

  def initialize(food)
    @gtinUpc = food[:gtinUpc]
    @description = food[:description]
    @brandOwner = food[:brandOwner]
    @ingredients = food[:ingredients]
  end
end