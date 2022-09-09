# frozen_string_literal: true

class Food
  attr_reader :id, :description

  def initialize(data)
    @id = data[:fdcId]
    @description = data[:description]
  end
end
