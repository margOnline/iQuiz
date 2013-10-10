class Question < ActiveRecord::Base
  
  has_one :response
  has_one :image

  validates :solution, inclusion: [true, false]


  def response_correct?
    
  end
end
