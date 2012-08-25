class Grade
  include Mongoid::Document
  include Mongoid::Timestamps
  embedded_in :subject
  
  field :grade, type: Integer
  field :quarter, type: String
end
