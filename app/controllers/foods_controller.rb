class FoodsController < ApplicationController
  def index
    @foods = FoodsServicer.new.search(params[:q])
    @results = FoodsServicer.new.get_total_hits(params[:q])
  end
end
