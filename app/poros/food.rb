class Food
  attr_reader :upc, 
              :description,
              :brand_owner
              :ingredients
              :id
              
  def initialize(data)
    @id = data[:id]
    @upc = data[]
    @description = data[]
    @brand_owner = data[]
    @ingredients = data[]
  end
end