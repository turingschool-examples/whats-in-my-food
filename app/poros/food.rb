class Food
  attr_reader :code, :description, :owner, :ingredients, :count

  def initialize(data, count)
    @count = count
    @code = data[:fdcId]
    @description = data[:description]
    @owner = data[:food_category]
    @ingredients = [:foodNutrients]
  end
end
