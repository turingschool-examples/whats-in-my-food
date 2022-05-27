class WelcomeController < ApplicationController
  def index
    results = FoodService.search_for_foods(params[:q])
    @total_hits = results[:totalHits]

     results[:foods].map do |food|
      Food.new(food)
    end
#    binding.pry
  end
end
