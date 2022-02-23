class FoodsClient
  def self.get_url(url, query)
    conn = Faraday.new(url: 'https://api.nal.usda.gov') do |f|
      f.params[:api_key] = ENV['food_api_key']
      f.params[:query] = query unless query.nil?
    end
    response = conn.get(url)

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.search_foods(query)
    get_url('fdc/v1/foods/search', query)
  end
end
