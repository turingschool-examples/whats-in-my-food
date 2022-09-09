class FoodService
   def food_search(food)
      response = conn.get("foods/search?query=#{food}&pageSize=10&pageNumber=1")
      body = parsed(response)
   end

   private

   def conn 
      Faraday.new(url:'https://api.nal.usda.gov/fdc/v1/') do |faraday|
         faraday.params['api_key'] = ENV['api_key']
      end
   end

   def parsed(response)
      JSON.parse(response.body, symbolize_names: true)
   end
end