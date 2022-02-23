class Food
  attr_reader :hits, :gtinUpc, :description, :brandOwner, :ingredients

  def initialize(data, hits)
    @hits = hits
    @gtinUpc = data[:gtinUpc]
    @description = data[:description]
    @brandOwner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
