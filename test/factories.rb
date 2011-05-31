FactoryGirl.define do
  factory :album do
    name "An Album for Testing"
  end
  
  factory :category do
    name "red"
  end
  
  factory :categorization do
    association :album, :factory => :album
    association :category, :factory => :category
  end
end