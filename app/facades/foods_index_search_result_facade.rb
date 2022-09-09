class FoodsIndexSearchResultFacade

    def self.service(search) 
        data = FoodService.food_search(search)
        # binding.pry 
       
        # @foods = data.map do |food|
        #     FoodIndexResult.new(food)
        # end 
    end 

end 