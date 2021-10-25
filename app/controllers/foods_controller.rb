class FoodsController < ApplicationController
  def index
    search = FoodFacade.search(params[:q])
    @hits = search[:total_hits]
    @foods = search[:foods]
  end

end
