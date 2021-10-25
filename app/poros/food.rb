class Food
  attr_reader :fdcid

  def initialize(data)
    @fdcid = data[:fdcid]

  end
end
