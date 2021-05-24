require "rails_helper"

describe "FoodFacade" do
  xit "returns an array popular movies"
    facade = MovieFacade.search_results
    expect(facade).to be_an Array
    expect(facade.first).to be_a Food
  end

end
