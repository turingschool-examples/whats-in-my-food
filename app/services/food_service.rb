class FoodService
  def self.foods_by_ingredient(ingredient)
    search = ingredient.gsub(/\s+/, "")
    get_data("/v1/foods/search?query=#{search}")
  end

  private
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc") do |faraday|
      faraday.params['api_key'] = ENV['fdc_api_key']
    end
  end

  def self.get_data(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
