class Stand < ActiveRecord::Base
	belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_many :completes,  dependent: :destroy
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	acts_as_votable
  
  def score
  	self.get_upvotes.size 
  end

  def length_of_time
  	['2 Minutes', '1 Hour', '1 Day', 'Multiple Days']
  end

end
