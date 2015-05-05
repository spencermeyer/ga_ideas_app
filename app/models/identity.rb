class Identity < ActiveRecord::Base
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, scope: :provider
  belongs_to :user

  #code below is for CREATING NEW IDENTITY if someone DOESN'T HAVE ONE
  def self.find_for_oauth(auth)
    find_or_create_by(uid: auth.uid, provider: auth.provider)
  end
end
