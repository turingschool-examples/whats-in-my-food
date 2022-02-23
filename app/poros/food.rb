class Food
  attr_reader :total_hits,
              :gtin_upc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(attributes, total_hits)
    @total_hits = total_hits
    @gtin_upc = attributes[:gtinupc]
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
