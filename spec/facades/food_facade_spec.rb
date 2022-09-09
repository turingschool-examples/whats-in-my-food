require 'rails_helper'

RSpec.describe 'FoodFacade' do 

  it "can call the service" do 
    data = FoodFacade.service("sweet potatoes")


  end
end