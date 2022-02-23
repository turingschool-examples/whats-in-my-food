class FoodsService
  def self.foods_by_ingredient(ingredient)
    search = ingredient.strip
    get_data("/v1/foods/seach?query=#{search}")
  end

  private
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc") do |faraday|
      faraday.params['api_key'] = ENV['fdc_api_key']
    end
  end

  def self.get_data(url)
    response = conn.get(url)
    JSON.parse(response.body, symoblize_names: true)
  end
end
