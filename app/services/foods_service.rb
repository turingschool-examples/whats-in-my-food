class FoodsService

  class << self

    def get_url(url, keyword = nil)
      conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
        faraday.params[:api_key] = ENV['food_api_key']
        faraday.params[:query] = keyword unless keyword.nil?
      end

      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end

    def find_food(keyword)
      get_url('fdc/v1/foods/search?query', keyword)
    end

  end
end
