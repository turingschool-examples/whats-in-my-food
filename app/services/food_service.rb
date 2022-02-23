class FoodService

  def self.search_foods(query, page_num)
    get_url("/foods/search?query=#{query}&dataType=Branded&api_key=#{ENV['food_api_key']}&pageNumber=#{page_num}")
  end

  def self.get_url(url)
    @responses_cache ||= {}

    if @responses_cache[url].nil?
      response = Faraday.get("https://api.nal.usda.gov/fdc/v1#{url}")
      @responses_cache[url] = JSON.parse(response.body, symbolize_names: true)
    else
      @responses_cache[url]
    end

  end

end
