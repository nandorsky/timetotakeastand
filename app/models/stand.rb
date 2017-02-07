class Stand < ActiveRecord::Base
	belongs_to :user
	acts_as_votable
  
  def score
  	self.get_upvotes.size 
  end

  def length_of_time
  	['2 Minutes', '1 Hour', '1 Day', 'Multiple Days']
  end

end
