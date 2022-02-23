class Food
  attr_reader :total_results, :id, :description, :brand_owner, :ingredients

  def initialize(data)
    @id = data[:fdcId]
    @description = data[:description]
    @brand_owner = data[:brand_owner]
    @ingredients = data[:foodNutrients].map do |nutrient|
      nutrient[:nutrientName]
    end
  end
end
