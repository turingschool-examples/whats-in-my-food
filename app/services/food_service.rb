class FoodService
    def self.get_foods(food)
        conn = Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/') do |faraday|
            faraday.headers['api_key'] = ENV['food_api_key']
        end
        response = conn.get("foods/search?api_key=#{ENV['food_api_key']}&query=#{food}&pageSize=10&pageNumber=1")
        body = JSON.parse(response.body, symbolize_names: true)
    end
end