class Food
  attr_reader :gtinUpc, :description, :brandOwner, :ingredients

  def initialize(data)
    @gtinUpc = data[:gtinUpc]
    @description = data[:description]
    @brandOwner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end