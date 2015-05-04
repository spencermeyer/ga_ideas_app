class Idea < ActiveRecord::Base
  has_many :medias
  belongs_to :user
  acts_as_votable
end






