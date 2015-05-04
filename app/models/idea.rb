class Idea < ActiveRecord::Base
  has_many :media
  belongs_to :user
  acts_as_votable

  validates :user_id, :title, :genre, presence: true  
  validates :genre, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :brief, length: { maximum: 500 }
end






