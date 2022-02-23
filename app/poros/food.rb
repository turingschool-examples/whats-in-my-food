class Food
  attr_reader :total_results, :id, :description, :brand_owner, :ingredients

  def initialize(data)
    @id = data[:foodCode]
    @description = data[:description]
    binding.pry
    @brand_owner = data[:finalFoodInputFoods].first[:foodDescription].split(", ")[1]
    @ingredients = data[:foodNutrients].map do |nutrient|
      nutrient[:nutrientName]
    end
  end
end
