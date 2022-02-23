require 'faraday'
require 'json'

class FoodService
  def find_food(food)
    response = conn.get("foods/search?query=#{food}&pageSize=10&pageNumber=1")
    body = parse_json(response)
  end

  private
  def conn
    Faraday.new(url:'https://api.nal.usda.gov/fdc/v1/') do |faraday|
      faraday.params['api_key'] = ENV['api_key']
    end
  end

  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
