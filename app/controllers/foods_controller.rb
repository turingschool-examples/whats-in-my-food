class FoodsController < ApplicationController
  def index
    conn = Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
          faraday.params["api_key"] = 'by1NhhsDgTaw3wH2iN6Fvk1ZYRr1qZ4IStjFKuAf'
          faraday.params['query'] = params[:q]
        end
        response = conn.get("/fdc/v1/foods/search?")
        parsed = JSON.parse(response.body, symbolize_names: true)[:foods]

      @foods = parsed.first(10).map do |data|
          Food.new(data)
        end

  end
end
