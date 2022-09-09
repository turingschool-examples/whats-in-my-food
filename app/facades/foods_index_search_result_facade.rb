class FoodsIndexSearchResultFacade

    def self.service(search) 
        data = FoodService.food_search(search)[:foods]
       
        @foods = data.map do |food|
            Food.new(food)
        end 
    end 
end 