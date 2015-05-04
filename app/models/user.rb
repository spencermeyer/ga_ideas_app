class User < ActiveRecord::Base
  has_many :ideas
  has_many :identities
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  acts_as_voter

  validates :first_name,
     presence: true,
     length: { in: 2..20},
     format: { with: /\Aron[a-zA-Z]+\z/, message: "First name should only contain letters" }
  validates :last_name,
     presence: true,
     length: { in: 2..50},
     format: { with: /\A[a-zA-Z]+\z/, message: "Last name should only contain letters" }
  validates :dob,
     presence: true
  validates :role,
     presence: true,
     inclusion: { in: %w(admin user), message: "you have not chosen a valid role" }
  validates :gender,
     presence: true,
     length: { is: 1},
     inclusion: { in: %w(m f), message: "you have not chosen a valid gender" }
  validates :nationality,
     length: { in: 2..30 }
  validates :location,
     presence: true,
     length: { in: 2..30 }
end

