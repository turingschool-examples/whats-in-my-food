class FoodService
  def self.search_all_items(search)
    search = ERB::Util.url_encode search
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['API_KEY']}&query=#{search}&pageSize=10")
    result = JSON.parse(response.body, symbolize_names: true)
  end
end
