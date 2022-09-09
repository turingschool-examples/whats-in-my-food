class FoodFacade
  def self.results(query)
    parsed_json = FoodService.search(query)
    parsed_json[:foods].map do |data|
      Food.new(data)
    end
  end
end