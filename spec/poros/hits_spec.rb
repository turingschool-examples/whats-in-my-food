require 'rails_helper'

RSpec.describe Hits do
  let(:total_hits) { "13456" }

  it 'exists' do
    expect(Hits.new(total_hits)).to be_a Hits
  end

  it 'is initialized with an attribute' do
    expect(Hits.new(total_hits).number_of_results).to eq("13456")
  end

end
