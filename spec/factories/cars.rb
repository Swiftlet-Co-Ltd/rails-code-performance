FactoryBot.define do
  factory :car do
    100.times do |n|
      sequence "name#{n}" do |n1|
        "toyota#{n1}"
      end
    end
  end
end
