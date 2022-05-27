class FoodDataService

  def self.connection
    Faraday.new('https://api.nal.usda.gov/fdc/v1/foods') do |faraday|
      faraday.params["api_key"] = ENV['api_key']
    end
  end


end
