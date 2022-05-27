class Food
  attr_reader :upc,
              :description,
              :company,
              :ingredients

  def initialize(attr)
    @upc = attr[:gtinUpc] ? attr[:gtinUpc] : 'No response'
    @description = attr[:description]
    @company = attr[:brandOwner] ? attr[:brandOwner] : 'No response'
    @ingredients = attr[:ingredients] ? attr[:ingredients] : 'No response'
  end
