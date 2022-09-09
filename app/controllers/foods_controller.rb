class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.get_list(params[:q])  
  end
end 