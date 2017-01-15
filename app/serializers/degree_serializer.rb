class DegreeSerializer < ActiveModel::Serializer
  attributes :id, :name, :gpa, :year_completed
  has_one :school
  has_one :user
end
