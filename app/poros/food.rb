class Food
  attr_reader :code, :description, :brand, :ingredients
  def initialize(data)
    @code = nil_check(data[:gtinUpc]) ? 'No code found.' : data[:gtinUpc]
    @description = nil_check(data[:description]) ? 'No description found.' : data[:description]
    @brand = nil_check(data[:brandOwner]) ? 'No brand found.' : data[:brandOwner]
    @ingredients = nil_check(data[:ingredients]) ? 'No ingredients found.' : data[:ingredients]
  end

  def nil_check(attribute)
    ['', nil].include?(attribute)
  end
end