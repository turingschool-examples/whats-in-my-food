class Food
  attr_reader :id,
              :code,
              :description,
              :owner,
              :ingredients
  def initialize(data)
    @id = data[:fdcId]
    @code = data[:gtinUpc].to_i
    @description = data[:lowercaseDescription].capitalize
    @owner = data[:brandOwner]
    @ingredients = data[:ingredients].downcase.capitalize
  end
end