class FoodController < ApplicationController
  def index
    @foods = FoodFacade.search(params[:q])

    if @foods == []
      flash[:error] = 'No food found'
      render 'welcome/index'
    else
      @foods
      @total_results = FoodFacade.total_results(params[:q])
    end
  end
end