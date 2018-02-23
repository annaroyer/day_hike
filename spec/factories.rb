FactoryBot.define do
  factory :trail do
    sequence(:name) { |n| "Trail #{n}" }
    sequence(:address) { |n| "#{n} Trail lane" }
    sequence(:length) { |n| n }
  end

  factory :trip do
    sequence(:name) { |n| "Trip #{n}" }
    start_date Date.today
    end_date Date.today
  end

  factory :trail_trip do
    trip
    trail
  end
end
