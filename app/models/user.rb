class User < ActiveRecord::Base

	has_many :degrees
	has_many :schools, through: :degrees

	def self.minimum_gpa(gpa)
		self.all.select {|x| x.gpa >= gpa}
	end
end
