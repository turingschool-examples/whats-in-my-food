class FoodsService
  def get_url(url)
    conn = Faraday.new("https://api.nal.usda.gov/fdc/v1/foods/")
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def search_by_keyword(word)
    get_url("search?query=#{word}&dataType=&sortBy=dataType.keyword&sortOrder=asc&api_key=#{ENV['api_key']}")
  end
end