class Food 
  attr_reader :description,
              :code,
              :brand_owner,
              :ingredients
  def initialize(data)
    @description = data[:description]
    # require 'pry'; binding.pry 
    @code = data[:code]
    @brand_owner = data[:brand_owner]
    @ingredients = data[:ingredients]
  end
end