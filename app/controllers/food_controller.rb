class FoodController < ApplicationController
  def index
    # conn = Faraday.new(
    #   url: 'https://api.nal.usda.gov/fdc/v1/foods',
    #   headers: {'X-Api-Key' => ENV['fdc_api_key']}
    # )
    # resp =conn.get('search', {query: params[:q]})
    @foods = FoodFacade.search(params[:q])
    binding.pry
    if @foods[:totalHits] == 0
      flash[:error] = 'No food found'
      render 'welcome/index'
    else
      @foods = JSON.parse(resp.body, symbolize_names: true)
    end
  end
end