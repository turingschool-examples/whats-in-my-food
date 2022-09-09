class FoodsController < ApplicationController
  def index
    @foods = @search.keyword(params[:name])
  end
end
