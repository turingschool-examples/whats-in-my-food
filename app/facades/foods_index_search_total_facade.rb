class FoodsIndexSearchTotalFacade

    def self.service(search) 
        data = FoodService.food_search(search)
       
        @total_foods = data[:totalHits]
    end 

end 