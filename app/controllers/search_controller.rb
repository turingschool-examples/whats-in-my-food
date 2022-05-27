class SearchController < ApplicationController

  def foods
  
    search_term = params[:q].gsub(/ /,'%20')
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods") 
    response = conn.get("search?api_key=OwdyDMbrhfZf0PNawWLuhbzcljpje6VR8dAp5Jda&query=#{search_term}")
    data = JSON.parse(response.body, symbolize_names: true)[:foods]
    @foods = []
    data.each do |food|
      @foods << Food.new(food)
    end
  
 end
  

end 