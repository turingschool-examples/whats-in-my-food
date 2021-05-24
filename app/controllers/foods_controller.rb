class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.relevant_dishes(params[:q])
    @total_found = @foods.first.total_found
  end
end
