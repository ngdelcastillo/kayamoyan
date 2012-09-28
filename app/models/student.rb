class Student
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :user #if role type is student
  has_many :grades
  has_and_belongs_to_many :levels
end
