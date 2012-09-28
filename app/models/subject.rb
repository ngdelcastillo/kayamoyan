class Subject
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :level
  has_many :grades
  attr_accessible :users, :school, :name, :limit, :start_at, :end_at, :grades

  field :name, type: String
  field :limit, type: Integer
  field :start_at, type: Time
  field :end_at, type: Time
end
