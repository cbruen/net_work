class User < ActiveRecord::Base

	has_many :degrees
	has_many :schools, through: :degrees

	has_secure_password

	def self.minimum_gpa(gpa)
		self.all.select {|x| x.gpa >= gpa}
	end
end
