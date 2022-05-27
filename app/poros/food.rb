class Food
  attr_reader :code, :description, :brand_owner, :ingredients

  def initialize(data)
    @code = data[:code]
    @description = data[:description]
    @brand_owner = data[:brand_owner]
    @ingredients = data[:ingredients]
  end
end
