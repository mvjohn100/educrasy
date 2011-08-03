class StudentDetail < ActiveRecord::Base
  belongs_to :class_detail
  belongs_to :user
  validates_uniqueness_of :user_id,:scope => [:class_detail_id]
end
