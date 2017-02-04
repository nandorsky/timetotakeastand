class Stand < ActiveRecord::Base
	belongs_to :user
	acts_as_votable
  
  def score
  	self.get_upvotes.size 
  end

end
