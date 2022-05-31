class FoodsController < ApplicationController

  def index
    @data = FoodService.search_food(params[:q])
    @results = @data[:foods].find_all do |food|
      if food[:ingredients]
        food[:ingredients].include?(params[:q].upcase)
      end
    end
  end

end
