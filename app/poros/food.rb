class Food 
  attr_reader :description,
              :code,
              :brand_owner,
              :ingredients,
              :count
  def initialize(data, count)
    @description = data[:description]
    # require 'pry'; binding.pry 
    @code = data[:code]
    @brand_owner = data[:brand_owner]
    @ingredients = data[:ingredients]
    @count = count
  end
end