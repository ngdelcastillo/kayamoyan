class Grade
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :subject
  belongs_to :student
  has_many :exams
  
  field :grade, type: Integer
  field :quarter, type: String
end
