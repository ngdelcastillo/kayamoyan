class User
  include Mongoid::Document
  include Mongoid::Timestamps
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :invitable

  ## Database authenticatable
  field :email,              :type => String, :default => ""
  field :encrypted_password, :type => String, :default => ""

  validates_presence_of :email
  validates_presence_of :encrypted_password
  
  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time

  ## Rememberable
  field :remember_created_at, :type => Time

  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String

  ## Confirmable
  field :confirmation_token,   :type => String
  field :confirmed_at,         :type => Time
  field :confirmation_sent_at, :type => Time
  field :unconfirmed_email,    :type => String # Only if using reconfirmable

  ## Invitable
  field :invitation_token
  field :invitation_sent_at,   :type => Time
  field :invitation_accepted_at,  :type => Time
  field :invitation_limit, :type => Integer
  field :invited_by_id
  field :invited_by_type


  ## Lockable
  # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  # field :locked_at,       :type => Time

  ## Token authenticatable
  # field :authentication_token, :type => String
  
  # Custom fields
  before_create :build_association
  attr_accessible :school, :first_name, :last_name, :email, :password, :role
  belongs_to :school
  has_one :student
  field :first_name
  field :last_name
  field :role, :default => 'user' #admin, moderator, teacher, student, parent, user

  # Custom methods
  def build_association
    if self.role == "Student"
      self.create_student
    end
  end
  def self.current_school
    #session[:school]
  end

  def role?(role)
    self.role.downcase == role.to_s.downcase
  end
end
