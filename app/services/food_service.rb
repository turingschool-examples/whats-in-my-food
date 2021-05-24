class FoodService < BaseService

  def self.get_details(food)
    response =  conn("https://api.nal.usda.gov").get("/fdc/v1/foods/search") do |f|
      f.params["query"] = food
      f.params["api_key"] = ENV['api_key']
      f.params["pageSize"] = ENV['100']
    end

    a = format_json(response)
    a[:foods]
  end

end
