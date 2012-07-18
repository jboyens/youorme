FactoryGirl.define do
  factory :kid do
    sequence(:name) { |n| "Kid ##{n}" }

    address

    trait :active do
      active true
    end

    trait :inactive do
      active false
      address nil
    end

    factory :active_kid, :traits => [:active]
    factory :inactive_kid, :traits => [:inactive]
  end
end
