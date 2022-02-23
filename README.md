# What's in my Food

### Versions

Ruby 2.7.2

Rails 5.2.5

### Setup

- Fork and Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}`
- `rails s`

```
User Story: 
As a user,
 When I visit "/"
 And I fill in the search form with "sweet potatoes"
 (Note: Use the existing search form)
 And I click "Search"
 Then I should be on page "/foods"
 Then I should see a total of the number of items returned by the search.
 (sweet potatoes should find more than 30,000 results)
 Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
And for each of the foods I should see:
 - The food's GTIN/UPC code
 - The food's description
 - The food's Brand Owner
 - The food's ingredients
 ```