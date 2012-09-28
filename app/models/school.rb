class School
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :users
  has_many :levels

  field :name, type: String
  field :address, type: String
  field :phone, type: String
  field :website, type: String
  field :sch_type, type: String
  field :religion, type: String
end
