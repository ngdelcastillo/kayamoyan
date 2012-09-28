class Level
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :school
  has_and_belongs_to_many :students
  has_many :subjects
  field :name, type: String
  field :year, type: String
end
