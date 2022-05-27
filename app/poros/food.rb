class Food
  attr_reader :fdcid, :description, :brand_owner, :ingredients

  def initialize(data)
    @fdcid = data[:fdcId]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end 

end 