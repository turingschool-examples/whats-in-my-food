class Food
  def initialize(data)
    @name = data[:name]
    @code = data[:code]
    @description = data[:description]
    @brand_owner = data[:brand_owner]
    @ingredients = data[:ingredients]
  end
end