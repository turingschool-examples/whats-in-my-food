class FoodsFacade
  def self.get_list_of_foods(search)
    json = FoodsService.getting_list(search)

    json[:foods].map do |data|
      Food.new(data)
    end

  end

  def self.search_result_hits(search)
    FoodsService.getting_list(search)[:totalHits]
  end
end
