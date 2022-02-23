class FoodService

  def self.search(query)
    get_url("/search?#{query}")
  end

  def self.get_url(url)
    root = 'https://api.nal.usda.gov/fdc/v1/foods'
    response = Faraday.get(root + url)
    json = JSON.parse(response.body, symbolize_names: true)
  end

end
