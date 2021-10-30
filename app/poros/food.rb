class Food
  attr_reader :gtinUpc,
              :description,
              :brandOwner,
              :ingredients

  def initialize(data)
    @gtinUpc = data[:gtinUpc]
    @description = data[:description]
    @ingredients = data[:ingredients]
    @brandOwner = data[:brandOwner]
  end
end
