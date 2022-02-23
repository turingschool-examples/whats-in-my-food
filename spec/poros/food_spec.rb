require 'rails_helper'
RSpec.describe Food do
  describe 'initiailize' do
    it 'exists and has attributes' do
      data = {
        fdcId: '123456',
        description: 'creamy beige',
        brand: 'baileys irish cream',
        operatingHours: [
          {
            standardHours: {
              monday: "All Day",
              tuesday: "All Day",
              wednesday: "All Day",
              thursday: "All Day",
              friday: "All Day",
              saturday: "All Day",
              sunday: "All Day"
            }
          }
        ]
      }
      park = Park.new(data, 33)
      expect(park.name).to eq(data[:fullName])
      expect(park.description).to eq(data[:description])
      expect(park.directions).to eq(data[:directionsInfo])
      expect(park.park_count).to eq(33)
      expect(park.monday).to eq(data[:operatingHours][0][:standardHours][:monday])
      expect(park.tuesday).to eq(data[:operatingHours][0][:standardHours][:tuesday])
      expect(park.wednesday).to eq(data[:operatingHours][0][:standardHours][:wednesday])
      expect(park.thursday).to eq(data[:operatingHours][0][:standardHours][:thursday])
      expect(park.friday).to eq(data[:operatingHours][0][:standardHours][:friday])
      expect(park.saturday).to eq(data[:operatingHours][0][:standardHours][:saturday])
      expect(park.sunday).to eq(data[:operatingHours][0][:standardHours][:sunday])
    end
  end
end
