class Choice < ActiveRecord::Base
  belongs_to :quest
  #validates_uniqueness_of :quest_id,:scope => [:answer]
 end
