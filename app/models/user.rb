class User < ActiveRecord::Base

	has_many :degrees
	has_many :schools, through: :degrees

end
