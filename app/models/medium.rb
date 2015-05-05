class Medium < ActiveRecord::Base
  belongs_to :idea
  validates :idea_id, presence: true
  validates :idea_id, uniqueness: true
  validates :title, presence: true, length: { in: 2..50, message: "Title should be 2-50 letters"}
  validates :media_type, presence: true

  mount_uploader :content, MediaUploader
end
