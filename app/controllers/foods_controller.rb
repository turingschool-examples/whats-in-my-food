class FoodsController < ApplicationController

  def index 
  	@foods = FoodsFacade.search_ingredient(params[:q])
  end

end