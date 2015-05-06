class Ability
  include CanCan::Ability

  def initialize(user)
    if user.try(:role) == "admin"
      can    :manage, :all
    elsif user.try(:role) == "user"
      can    :manage, User do |u|
        u.id == user.id
    end
    cannot :manage, User
    cannot :manage, Idea
    end
  end
end
