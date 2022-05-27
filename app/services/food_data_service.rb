class FoodDataService

  def self.connection
    Faraday.new('https://api.nal.usda.gov/fdc/v1/foods') do |faraday|
      faraday.params["api_key"] = ENV['api_key']
    end
  end

  def self.parsed_search_response(query)
    response = connection.get("search?query=#{query}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
