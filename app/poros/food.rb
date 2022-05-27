class Food
  attr_reader :fdcId, :description, :brandOwner, :ingredients

  def initialize(data)
    @fdcId = data[:fdcId]
    @description = data[:description]
    @brandOwner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end