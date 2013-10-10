class Image < ActiveRecord::Base
 
  belongs_to :question
 
  validates_format_of :filename, :with => /.+\.(jpg|jpeg|png)\z/i

end
