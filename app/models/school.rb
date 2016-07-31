class School < ActiveRecord::Base
	
	has_many :degrees
	has_many :users, through: :degrees
	
end
