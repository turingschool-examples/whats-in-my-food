class FoodService 

    def get_foods(query) 
        get_url("search?query=#{query}")
    end

    def get_url(uri)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/#{uri}") do |faraday|
        faraday.params[:api_key] = ENV["fda_key"]
    end 
    JSON.parse(response.body, symbolize_names: true)
    end
end