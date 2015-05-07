class IdeaSerializer < ActiveModel::Serializer

  attributes :id, :full_name, :title, :genre, :brief, :description

  def full_name 
    "#{object.user.first_name} #{object.user.last_name}"
  end
end
