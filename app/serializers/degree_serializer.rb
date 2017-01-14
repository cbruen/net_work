class DegreeSerializer < ActiveModel::Serializer
  attributes :id, :name, :gpa
  has_one :school
end
