class BaseService
  def self.conn(url)
    Faraday.new(url)
  end

  def self.format_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
