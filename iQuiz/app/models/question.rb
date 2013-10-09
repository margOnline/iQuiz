class Question < ActiveRecord::Base
  
  validates :solution, inclusion: [true, false]

  def response_correct?
    
  end
end
