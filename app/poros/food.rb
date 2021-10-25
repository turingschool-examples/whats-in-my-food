class Food
  attr_reader :gtinUpc,
              :description,
              :brandOwner,
              :ingredients

  def initialize(data)
    @gtinUpc          = data[:foodCode]
    @description      = data[:description]
    @brandOwner       = data[:brand_owner]
    @ingredients      = data[:ingredients]
  end
end
