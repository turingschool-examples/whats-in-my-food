class FoodsController < ApplicationController

  def index
    @facade = FoodDataFacade.new
    @total_hits = @facade.total_hits(params[:q])
    @foods = @facade.search_by_ingredient(params[:q]).first(10)
  end

end
