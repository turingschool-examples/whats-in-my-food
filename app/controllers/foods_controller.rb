class FoodsController < ApplicationController
  def results
    conn = Faraday.new("https://api.nal.usda.gov/fdc/v1/foods/")
    response = conn.get("search?query=sweet%20potatoes&dataType=&pageSize=10&sortBy=dataType.keyword&sortOrder=asc&api_key=IBrr3WLMRnFvnlpciDcPDMIChaL7447fd8EnsmWw")
    @results = JSON.parse(response.body, symbolize_names: true)
  end
end