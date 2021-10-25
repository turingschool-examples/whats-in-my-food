class Food
  attr_reader :upc_code,
              :description,
              :brand_owner,
              :ingredients

  def initialize(info)
    @upc_code = info[:fdcId]
    @description = info[:description]
    @brand_owner = info[:brandOwner]
    @ingredients = info[:ingredients]
  end
end
