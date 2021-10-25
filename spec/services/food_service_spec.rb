require 'rails_helper'

RSpec.describe 'food data api' do
  before :each do
  end

  it 'gets data from the API', :vcr do
    response = FoodsService.get_data('list')

    expect(response[0]).to be_a(Hash)
    expect(response).to be_an(Array)
    expect(response[0][:fdcId]).to be_an(Integer)
    expect(response[0][:description]).to be_a(String)
    expect(response[0][:dataType]).to be_a(String)
    expect(response[0][:publicationDate]).to be_a(String)
    expect(response[0][:foodCode]).to be_a(String)
    expect(response[0][:foodNutrients]).to be_an(Array)
    expect(response[0][:foodNutrients][0]).to be_a(Hash)
    expect(response[:totalHits]).to be_an(Integer)
    expect(response[0][:currentPage]).to be_a(Integer)
    expect(response[0][:totalPages]).to be_an(Integer)
    expect(response[0][:foods]).to be_an(Array)
  end
end
# [
#   {
#     "foodSearchCriteria": {},
#     "totalHits": 1034,
#     "currentPage": 0,
#     "totalPages": 0,
#     "foods": [
#       {
#         "fdcId": 45001529,
#         "dataType": "Branded",
#         "description": "BROCCOLI",
#         "foodCode": "string",
#         "foodNutrients": [
#           {
#             "number": 303,
#             "name": "Iron, Fe",
#             "amount": 0.53,
#             "unitName": "mg",
#             "derivationCode": "LCCD",
#             "derivationDescription": "Calculated from a daily value percentage per serving size measure"
#           }
#         ],
#         "publicationDate": "4/1/2019",
#         "scientificName": "string",
#         "brandOwner": "Supervalu, Inc.",
#         "gtinUpc": "041303020937",
#         "ingredients": "string",
#         "ndbNumber": "string",
#         "additionalDescriptions": "Coon; sharp cheese; Tillamook; Hoop; Pioneer; New York; Wisconsin; Longhorn",
#         "allHighlightFields": "string",
#         "score": 0
#       }
#     ]
#   }
# ]
