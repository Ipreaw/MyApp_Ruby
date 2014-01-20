class Comment < ActiveRecord::Base
  belongs_to :member
  belongs_to :place
  validates :comment_text , :presence => true, :length => { :minimum => 10}
  attr_accessible :comment_text
end
