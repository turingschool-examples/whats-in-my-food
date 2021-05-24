class Food
  attr_reader :gtin_upc_code,
              :description,
              :brand_owner,
              :ingredients

  def initialize(data)
    @gtin_upc_code = data[:gtinUpc]
    @description   = data[:description]
    @brand_owner   = data[:brandOwner]
    @ingredients   = data[:ingredients]
  end
end
