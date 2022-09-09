class FoodFacade 
   
  class << self

    def service(food)
      data = FoodService.foods_by_search(food)
      @foods = data[:foods].map do |food|
        binding.pry
        Food.new(food)
      end
    end
  end
end

# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients