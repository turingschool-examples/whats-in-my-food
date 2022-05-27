class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.search_by_food(params[:q])
    @hits = FoodsService.foods_by_ingredient(params[:q])[:totalHits]
  end
end
