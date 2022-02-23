# app/poros/food.rb

class Food
  attr_reader :gtin, :description, :ingredients, :brand

  def initialize(attributes)
    @gtin = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
