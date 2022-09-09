class FoodService
 
    def self.search_food(food)
        response = conn.get("search?#{food}")
        JSON.parse(response.body, symbolize_names: true) 
      end

    private  

    def self.conn
        Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods/") do |faraday|
          faraday.params['api_key'] = ENV['api_key']
        end
      end
end