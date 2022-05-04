FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    name { Faker::Name.name }
    password { 'password' }
    password_confirmation { 'password' }

    trait :admin do
      sequence(:email) { |n| "admin_#{n}@example.com" }
      role { :admin }
    end

    trait :general do
      sequence(:email) { |n| "general_#{n}@example.com" }
      role { :general }
    end
  end
end