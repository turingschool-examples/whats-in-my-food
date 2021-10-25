class FoodFacade
  class << self
    def search(name)
      data = FoodClient.search(name)

      [foods(data), data[:totalHits]]
    end

    private

    def foods(data)
      data[:foods].map do |food|
        FoodPoro.new(food)
      end
    end
  end
end
