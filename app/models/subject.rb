class Subject
  include Mongoid::Document
  has_many :users
  belongs_to :school
  attr_accessible :users, :school, :name, :limit, :start_at, :end_at

  field :name, type: String
  field :limit, type: Integer
  field :start_at, type: Time
  field :end_at, type: Time
end
