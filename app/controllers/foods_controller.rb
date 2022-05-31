class FoodsController < ApplicationController

  def index 
  	@data = FoodsFacade.search_ingredient(params[:q])
  end

end