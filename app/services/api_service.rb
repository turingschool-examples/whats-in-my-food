class ApiService
  def self.get_data(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
