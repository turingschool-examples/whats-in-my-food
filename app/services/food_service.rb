class FoodService
  extend CallHelper

  def self.search(query)
    response = conn.get("search?query=#{query}&pageSize=10&pageNumber=1")
    json_response(response)
  end
end