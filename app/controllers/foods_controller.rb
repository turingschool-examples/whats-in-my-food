class FoodsController < ApplicationController

  def index
    @foods = if params[:q].present?
      FoodsFacade.search(params[:q])
    end
  end

end
