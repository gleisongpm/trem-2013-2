# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :parada do
    ordem "MyString"
    linha nil
    estacao nil
  end
end
