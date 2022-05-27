require 'rails_helper' 

RSpec.describe "Food" do 
    it "can make a Food" do 
        data = {
        gtinUpc: "54366234",
        description: "chessy mac",
        brandName: "Kraft",
        ingredients: "Random stuff, fake stuff, cheese"    
         }

         mac = Food.new(data)
         expect(mac).to be_an_instance_of Food
         expect(mac.brand).to eq("Kraft")
         expect(mac.ingredients).to eq("Random stuff, fake stuff, cheese")
         expect(mac.gtin_code).to eq("54366234")
    end 
end