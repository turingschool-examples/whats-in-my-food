class FoodService
  class << self
    def conn
      Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
        faraday.params['api_key'] = ENV['food_key']
      end

      def food_by_ingredient(ingredient)
        conn.get('/fdc/v1/foods/search') do |faraday|
          faraday.params['query'] = ingredient
        end
      end
    end
  end
end