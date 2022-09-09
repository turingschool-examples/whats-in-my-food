class Food
  attr_reader :code, :description, :brand, :ingredients
  def initialize(data)
    @code = data[:gtinUpc] != ''? data[:gtinUpc] : 'No code found.'
    @description = data[:description] != ''? data[:description] : 'No description found.'
    @brand = data[:brandOwner] != ''? data[:brandOwner] : 'No brand found.'
    @ingredients = data[:ingredients] != ''? data[:ingredients] : 'No ingredients found.'
  end
end