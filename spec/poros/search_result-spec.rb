require "rails_helper"

RSpec.describe SearchResult do
  it 'has attributes' do
    data = {
      total_results: 123,
      foods: ['food object 1', 'food object 2']
    }
    result = SearchResult.new(data)

    expect(result.total_results).to eq(123)
    expect(result.foods).to eq(['food object 1', 'food object 2'])
  end
end
