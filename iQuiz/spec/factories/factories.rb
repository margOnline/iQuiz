FactoryGirl.define do 
  factory :question do 
    query 'Is Chicago the capital of the United States'
    
    trait :solution_true do 
      solution true
    end
    
    trait :solution_false do 
      solution false
    end
  end

  factory :answer do
    question_id 1 

    trait :reply_true do
      reply true
    end

    trait :reply_false do
      reply false
    end
  end

end