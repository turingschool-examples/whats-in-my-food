class FoodService < APIService

  def self.search_foods_by_name(name)
    response = conn.get('/getFoodsSearch') do |f|
      f.params['query'] = name
    end
    parse_json(response)
  end
end
