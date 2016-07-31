class Degree < ActiveRecord::Base
	
	belongs_to :user
	belongs_to :school
	
	validates :name, presence: true
	validates :school_id, presence: true
	
	def school_attributes=(att)
		if self.school = School.find_or_create_by(name: att[:name], city: att[:city]).valid?
			self.school = School.find_or_create_by(name: att[:name], city: att[:city])
			self.save
		end
		
			
	end
	
end
