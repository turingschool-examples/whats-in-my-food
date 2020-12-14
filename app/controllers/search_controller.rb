class SearchController < ApplicationController
  def index
    @search_term = params[:search_field]
    # conn = Faraday.new('https://api.nal.usda.gov/fdc/v1')
    # response = conn.get("foods/search?api_key=#{ENV['FOOD_API_KEY']}&query=#{@search_term}")
    # @results = JSON.parse(response.body, symbolize_names: true)
    # binding.pry
  end
end
