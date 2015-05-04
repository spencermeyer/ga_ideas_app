class Medium < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :idea
  validates :idea_id, presence: true
  validates :idea_id, uniqueness: true
  validates :title, presence: true
  validates :media_type, presence: true
  validates :content, presence: true
=======
belongs_to :idea
validates :idea_id, presence: true
validates :idea_id, uniqueness: true
validates :title, presence: true, length: { in: 2..50, message: "Title should be 2-50 letters"}
validates :media_type, presence: true
validates :content, presence: true
>>>>>>> 770a72d77ffd8c5b819fb0ffbe3c62c5e69770aa
end
