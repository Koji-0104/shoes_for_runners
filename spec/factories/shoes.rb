FactoryBot.define do
  factory :shoe do
    association :user
    name { Faker::Name.name }
    url { Faker::Internet.url }
    img_url { Faker::Internet.url }
    gender { 0 }
    purpose { 0 }
    maker { 0 }
    level { 0 }
  end
end
