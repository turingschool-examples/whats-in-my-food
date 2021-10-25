class Food
  attr_reader :total_hits,
              :gtinUpc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(food)
    @total_hits = food[:totalHits]
    @gtinUpc = food[:foods][:gtinUpc]
    @description = food[:description]
    @brand_owner = food[:brandOwner]
    @ingredients = food[:ingredients]
  end
end
