
FactoryGirl.define do
  factory :dac, :class => Refinery::Dacs::Dac do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

