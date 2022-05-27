class Food
  attr_reader :gintUpc, :description, :ownderBrand, :ingredients
  def initialize(data)
  	@gintUpc = data[:gintUpc]
  	@description = data[:description]
  	@ownderBrand = data[:ownderBrand]
  	@ingredients = data[:ingredients]
  end
end