class FoodFacade
  class << self
    def search(name)
      data = FoodClient.search(name)

      data.map do |food|
        FoodPoro.new(food)
      end
    end
  end
end
