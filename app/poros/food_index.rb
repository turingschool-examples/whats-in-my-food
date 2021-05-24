class FoodIndex
  attr_reader :totalhits,
              :food_info
              

  def initialize(data)
    @totalhits = data[:totalHits]
    
    @food_info = data[:foods].first(10).map do |food_info|
      @description = food_info[:description]
      @gtinupc = food_info[:gtinUpc] 
      brand = food_info[:brandOwner]
      ingredients = food_info[:ingredients]
    end
  end
end