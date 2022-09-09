class FoodService
  class << self
    def call_for_a_food

    end

    private
    def connection
      Faraday.new(url: "https://api.nal.usda.gov/fdc/v1") do |faraday|
        faraday.params["api_key"] = ENV['food_api_key']
      end
    end
    end


  end
end
