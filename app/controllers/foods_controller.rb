class FoodsController < ApplicationController
  def index
    @foods =  if params[:search].present?
                 FoodFacade.ten_foods(param[:search])
              end   
  end
end
