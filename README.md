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



We'll be using this repo for this mid mod. Follow the set up instructions in the readme.
We will be querying the FoodData Central API with an ingredient to retrieve a list of the ten most relevant foods that include that ingredient.
First, sign up for an api key here: https://fdc.nal.usda.gov/api-key-signup.html
The documentation for the API can be found here: https://fdc.nal.usda.gov/api-guide.html
Make sure you take the time to read the documentation carefully. Remember, we want to get a list of foods that contain an ingredient.
Complete the following user story. Be sure to test all of your work. Commit your work every 15 minutes.

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
Delivery:
Make a pull request with your name in the title.
 2. Submit a response to this survey.  If you want deeper feedback on a particular piece of your code, you will need to request that in this submission.
