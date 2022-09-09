class Food
  attr_reader :total_results,
              :gtin_upc_code,
              :description,
              :brand_owner,
              :ingredients

  def initialize(total_hits, data)
    @total_results = total_hits
    @gtin_upc_code = data[:gtinUpc].nil? ? "No data listed" : data[:gtinUpc]
    @description = data[:lowercaseDescription].nil? ? "No data listed" : data[:lowercaseDescription]
    @brand_owner = data[:brandOwner].nil? ? "No data listed" : data[:brandOwner]
    @ingredients = data[:ingredients].nil? ? "No data listed" : data[:ingredients]
  end
end