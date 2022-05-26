class FoodService
  class << self
    def conn
      conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods/") do |f|
        f.params['api_key'] = ENV['food_api_key']
      end
    end

    def get_data(url)
      response = conn.get(url)
      parsed = JSON.parse(response.body, symbolize_names: true)
      binding.pry
    end
  end
end
