class FoodsController < ApplicationController
  def index
    @foods =  if params[:q].present?
                 FoodFacade.ten_foods(params[:q])
              end
  end
end
