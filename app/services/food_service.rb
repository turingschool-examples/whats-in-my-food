class FoodService

  private

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.headers["X-API-KEY"] = ENV['food_api_key']
    end
  end
end
