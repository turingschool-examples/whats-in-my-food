class FoodService
  class << self
    def search_by_ingredient(ingredient)
      resp = conn.get('foods/search') do |faraday|
        faraday.params['query'] = ingredient
      end
      JSON.parse(resp.body, symbolize_names: true)
    end
    
    private
    
    def conn
      Faraday.new(url: 'https://api.nal.usda.gov/fdc/v1/') do |faraday|
        faraday.params['api_key'] = ENV['food_key']
      end
    end
  end
end