class Food
  attr_reader :code,
              :description,
              :owner,
              :ingredients
  def initialize(data)
    @code = data[:gtinUpc].to_i
    @description = data[:lowercaseDescription].capitalize
    @owner = data[:brandOwner]
    @ingredients = data[:ingredients].downcase.capitalize
  end
end