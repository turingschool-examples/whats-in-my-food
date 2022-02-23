class FoodsController < ApplicationController 
  def index 
    if params["q"].present?
      @foods = UsdaFacade.foods_by_keyword(params["q"])
      @total_hits = UsdaService.foods_by_keyword(params["q"])[:totalHits]
    end
  end
end