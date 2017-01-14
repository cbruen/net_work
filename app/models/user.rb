class User < ActiveRecord::Base

	validates :email, presence: true
	validates :name, presence: true

	has_many :degrees, -> {order 'year_completed DESC'}
	has_many :schools, through: :degrees

	has_secure_password

	def self.minimum_gpa(gpa, id)
		self.where.not(id: id).select {|x| x.degrees.first.gpa >= gpa if x.degrees.first}
	end
end
