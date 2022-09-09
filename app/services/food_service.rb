class FoodService
  def self.total_hits(keyword_string)
    response = conn.get("foods/search?query=#{keyword_string}&dataType=Branded&pageSize=10&")
    output = JSON.parse(response.body, symbolize_names: :true)[:totalHits]
  end

  def self.search_10(keyword_string)
    response = conn.get("foods/search?query=#{keyword_string}&dataType=Branded&pageSize=10&")
    output = JSON.parse(response.body, symbolize_names: :true)[:foods]
  end

  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.params['api_key'] = ENV['usda_api_key']
    end
  end
end
