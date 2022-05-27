require "rails_helper"

# As a user,
#  When I visit "/"
#  And I fill in the search form with "sweet potatoes"
#  (Note: Use the existing search form)
#  And I click "Search"
#  Then I should be on page "/foods"
#  Then I should see a total of the number of items returned by the search.
#  (sweet potatoes should find more than 30,000 results)
#  Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
#  - The food's GTIN/UPC code
#  - The food's description
#  - The food's Brand Owner
#  - The food's ingredients

describe "as a user" do
  describe "when i visit the welcome page" do
    it "if i fill in the search form with sweet potatoes and click search, then i am on the foods index page" do
      visit "/"

      fill_in :q, with: "sweet potatoes"

      click_on "Search"

      expect(current_path).to eq("/foods")
    end

    it "after searching, i should see the total of the number of items returned by the search" do
      visit "/"

      fill_in :q, with: "sweet potatoes"

      click_on "Search"

      expect(page).to have_content("Total Results: ")
    end

    it "after searching, i should see a list of ten foods that contain the searched ingredient with GTIN/UPC code, description, brand owner, and ingredients" do
      visit "/"

      fill_in :q, with: "sweet potatoes"

      click_on "Search"

      # first item in results
      expect(page).to have_content("GTIN/UPC: 832298010009")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
      expect(page).to have_content("Ingredients: ")
      # sixth item in results
      expect(page).to have_content("GTIN/UPC: 819614010035")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Brand Owner: BAKO SWEET")
      expect(page).to have_content("Ingredients: ")
      # tenth item in results
      expect(page).to have_content("GTIN/UPC: 865648000009")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Brand Owner: TOPASHAW FARMS")
      expect(page).to have_content("Ingredients: ")
    end
  end
end
