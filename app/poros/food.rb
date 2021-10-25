class Food
  attr_reader :gtinUpc, :description, :brand_owner, :ingredients

  def initialize(results)
    @gtinUpc = results[:gtinUpc]
    @description = results[:description]
    @brand_owner = results[:brandOwner]
    @ingredients = results[:foodNutrients]
  end

end
