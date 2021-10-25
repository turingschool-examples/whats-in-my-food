class FoodService
  def self.food_search(food)
    response = conn.get('v1/foods/search') do |f|
      f.params['query'] = food
    end
    parse_json(response)
  end

private
  def self.conn
    Faraday.new('https://api.nal.usda.gov/fdc/') do |f|
      f.header['X-Api-Key'] = ENV['food_key']
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
