class School < ActiveRecord::Base
	
	validates :name, presence: true
	
	has_many :degrees
	has_many :users, through: :degrees
	
	
end
