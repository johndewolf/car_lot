# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    color "yellow"
    year "2014"
    mileage "120"
  end
end
