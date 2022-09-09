require 'rails_helper'

RSpec.describe Food do
    it 'reads data into variables' do
        data = {:fdcId=>477475,
        :description=>"SWEET POTATO",
        :brandOwner=>"FRESH & EASY",
        :ingredients=>
         "SWEET POTATO, CHIPOTLE CHICKEN {COOKED CHICKEN (CHICKEN BREAST WITH RIB MEAT, CHICKEN BROTH, CONTAINS LESS THAN 2% OF: MODIFIED POTATO STARCH, GARLIC POWDER, CANOLA OIL, SOYBEAN OIL, SALT, SODIUM PHOSPHATE, CHICKEN FAT, FLAVOR), CHIPOTLE MANGO SAUCE [MANGO CHIPOTLE MARINADE (MANGO PUREE, WATER, CHIPOTLE PEPPER, ONION, SALT, BROWN SUGAR, CANOLA OIL, VINEGAR, GARLIC, LEMON JUICE CONCENTRATE, TOMATO PASTE, SPICES, RICE WINE VINEGAR, SUGAR, CILANTRO, CITRIC ACID)], WATER, CILANTRO}, MANGO SALSA (MANGO, CUCUMBER, TOMATO, LIME JUICE, MANGO PUREE, ONION, CILANTRO, SERRANO PEPPERS, SALT)."}
        
        food = Food.new(data)

        expect(food).to be_a Food
        expect(food.name).to eq(data[:description])
        expect(food.code).to eq(data[:fdcId])
        expect(food.brand).to eq(data[:brandOwner])
        expect(food.ingredients).to eq(data[:ingredients])
    end
end