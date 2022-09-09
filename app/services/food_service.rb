class FoodService

    def self.conn 
        Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
            faraday.headers["api_key"] = ENV['usda_key']
        end
    end 

    def self.food_search(search)
        response = conn.get("/fdc/v1/foods/search?api_key=#{ENV['usda_key']}&query=#{search}&pageSize=10&pageNumber=1")
        json = JSON.parse(response.body, symbolize_names: true)
    end 

end 