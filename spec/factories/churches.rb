FactoryGirl.define do
  factory :church do
    name "MyString"
    town "MyString"
    county "MyString"
    buildings_of_england_volume "MyString"
    diocese "MyString"
    archdeaconry "MyString"
    latitude 1.5
    longitude ""
    minster_current_status false
    collegiate_status false
    collegiate_date 1
    first_mentioned_in_text 1
    first_mentioned_in_text_explanation "MyText"
    earliest_extant_fabric_date "MyString"
    earliest_extant_fabric_date_evidence "MyText"
    earliest_extant_fabric_date_secured false
    earliest_extant_fabric_location "MyText"
    notes "MyText"
  end
end
