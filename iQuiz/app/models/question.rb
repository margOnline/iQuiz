class Question < ActiveRecord::Base
  validates :solution, inclusion: [true, false]
end
