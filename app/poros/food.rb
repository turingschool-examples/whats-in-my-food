class Food 
  attr_reader :upc_code,
              :description,
              :brand_owner,
              :ingredients
  
  def initialize(data)
    @upc_code    = data[:upc_code]
    @description = data[:description]
    @brand_owner = data[:brand_owner]
    @ingredients = data[:ingredients]
  end 
end 