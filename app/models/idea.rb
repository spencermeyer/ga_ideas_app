class Idea < ActiveRecord::Base
  has_many :media
  has_many :comments
  belongs_to :user
  acts_as_votable

  validates :user_id, :title, :genre, presence: true  
  validates :genre, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :brief, length: { maximum: 500 }

  def number_of_likes
    get_likes.size
  end

  def number_of_votes
    get_upvotes.size
  end

  acts_as_commentable 

end






