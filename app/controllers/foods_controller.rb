class FoodsController < ApplicationController
  def index
    @foods = FoodsServicer.new.foods(params[:search])
  end
end
