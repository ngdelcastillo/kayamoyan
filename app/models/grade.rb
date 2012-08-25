class Grade
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :users
  belongs_to :subject

  field :grade, type: Integer
  field :quarter, type: String
end
