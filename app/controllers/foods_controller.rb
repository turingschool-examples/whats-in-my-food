class FoodsController < ApplicationController
  def results
    @results = FoodsFacade.search_by_keyword(params[:q])
    
    # conn = Faraday.new("https://api.nal.usda.gov/fdc/v1/foods/")
    # response = conn.get("search?query=sweet%20potatoes&dataType=&sortBy=dataType.keyword&sortOrder=asc&api_key=#{ENV['api_key']}")
    # results = JSON.parse(response.body, symbolize_names: true)
    # filtered_results = []
    # results[:foods].each do |food|
    #   if food[:ingredients].downcase.include?(params[:q])
    #     filtered_results << food
    #   end
    # end
    # @results = filtered_results[0..9]
    # @item_count = results[:totalHits]
  end
end