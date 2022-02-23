class Food
  attr_reader :code, :description, :brand_owner, :ingredients
  def initialize(data)
    @code = data[:gtinUpc]
    @description = data[:description]
    @code = data[:brandOwner]
    @code = data[:ingredients]
  end
end 
