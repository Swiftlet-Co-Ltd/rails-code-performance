FactoryBot.define do
  factory :profile do
    sequence(:address) { |n| "address#{n}" }
  end
end
