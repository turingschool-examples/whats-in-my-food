class FoodService
  def self.search(query, page_size)
    query.gsub!(" ", "%20")
    get_url("/search?api_key=#{ENV["usda_api_key"]}&query=#{query}&pageSize=#{page_size}")
  end

  def self.get_url(url)
    root = "https://api.nal.usda.gov/fdc/v1/foods"
    response = Faraday.get(root + url)
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
