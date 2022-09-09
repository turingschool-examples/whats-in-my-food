class FoodService
  def self.search_foods(search)
    conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      # faraday.headers['api_key'] = ENV['movie_api_key']
    end
    query = search
    # query[' '] = '%20'
    query.gsub(' ', "%20")

    response = conn.get("/fdc/v1/foods/search?api_key=#{ENV['api_key']}&query=#{search}")

    if response.status == 200
      results = JSON.parse(response.body, symbolize_names: true)
      # session[:total_results] = results[:totalHits]
      results[:foods]
    end
  end

  def self.total_results(search)
    conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      # faraday.headers['api_key'] = ENV['movie_api_key']
    end
    query = search
    query[' '] = '%20'

    response = conn.get("/fdc/v1/foods/search?api_key=#{ENV['api_key']}&query=#{search}")

    if response.status == 200
      results = JSON.parse(response.body, symbolize_names: true)
      # session[:total_results] = results[:totalHits]
      results[:totalHits]
    end
  end
end