class Food
  attr_reader :total_hits,
              :gtin_upc_code,
              :description,
              :brand_owner,
              :ingredients

  def initialize(total_hits, data)
    @total_hits = total_hits
    @gtin_upc_code = data[:gtinUpc]
    @description = data[:lowercaseDescription]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end