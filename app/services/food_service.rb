class FoodService < BaseService

  def self.get_details(food)
    page_num = 1


    response =  conn("https://api.nal.usda.gov").get("/fdc/v1/foods/search") do |f|
      f.params["query"] = food
      f.params["api_key"] = ENV['api_key']
      f.params["pageSize"] = 200
      # f.params["pageNumber"] = page_number

      if !f.params["pageNumber"] == 5
        page_num += 1
      end

    end

    json = format_json(response)
    json[:foods]
  end

  private

  # def page_number
  #   page_num = 1
  #   until f.params["pageNumber"] == 883
  #     page_num += 1
  #   end
  #   page_num
  # end
end
