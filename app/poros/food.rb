class Food
attr_reader :gtin, :description, :brand, :ingredients, :totalHits
  def initialize(data)
    @gtin = data[:gtinUpc]
  	@description = data[:description]
  	@brand = data[:brandOwner]
  	@ingredients = data[:ingredients]
    # @total_hits =
  end
end
