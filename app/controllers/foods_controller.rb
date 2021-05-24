class FoodsController < ApplicationController
  def index
    @foods = FoodsService.foods_search(params[:q])
  end
end