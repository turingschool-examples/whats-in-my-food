class FoodService < BaseService
  def self.get_food_data
    response = conn("https://api.nal.usda.gov").get("/fdc/v1/foods/search?api_key=food_api_key&query=")
    get_json(response)
  end
end

# 'https://api.nal.usda.gov/fdc/v1/foods/search?query=sweet%20potatoes&dataType=Branded&pageSize=10&pageNumber=2&sortBy=dataType.keyword&sortOrder=asc&api_key=UAGpeLYoDxHbvGc9mMmHuDJZzQbnVeBJswV3DZhK' \
