FactoryGirl.define do 
  factory :question do 
    question 'Is Chicago the capital of the United States'
    
    trait :solution_true do 
      solution true
    end
    
    trait :solution_false do 
      solution false
    end
  end
end