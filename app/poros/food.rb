class Food 
  attr_reader :description,
              :code,
              :brand_owner,
              :ingredients,
              # :count,
              :totalHits
  def initialize(data, count)
    @description = data[:description]
    # require 'pry'; binding.pry 
    @code = data[:gtinUpc]
    @brand_owner = data[:brand_owner]
    @ingredients = data[:ingredients]
    # @count = count
    @totalHits = data[:totalHits]
  end
end