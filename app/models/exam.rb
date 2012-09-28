class Exam
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :grade

  field :scrore, type: Integer
  field :percentage, type: Integer
end
