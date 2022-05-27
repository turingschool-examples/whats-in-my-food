class Food
  attr_reader :gintUpc, :description, :brandOwner, :ingredients
  def initialize(data)
  	@gintUpc = data[:gtinUpc]
  	@description = data[:description].capitalize
  	@brandOwner = data[:brandOwner]
  	@ingredients = data[:ingredients].capitalize
  end
end