class Medium < ActiveRecord::Base
belongs_to :idea
validates :idea_id, presence: true
validates :idea_id, uniqueness: true
validates :title, presence: true
validates :media_type, presence: true
validates :content, presence: true
end
