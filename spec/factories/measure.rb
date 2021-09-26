FactoryBot.define do
  factory :measure do
    data { Faker::StarWars.character }
    measurement_id nil
  end
end
