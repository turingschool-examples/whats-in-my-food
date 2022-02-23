class Food
  attr_reader :gtinupc,
              :description,
              :brandowner,
              :ingredients
              
  def initialize(data)
    @gtinupc = data[:gtinUpc]
    @description = data[:description]
    @brandowner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
