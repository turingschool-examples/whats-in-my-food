class FoodsController < ApplicationController 
  def index
    require 'pry'; binding.pry
    query = params[:q]  
  end

end