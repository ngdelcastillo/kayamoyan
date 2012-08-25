class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # for guest users

    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
      can :create, User
      can :update, User do |update_user|
        update_user && update_user == user
      end
    end
  end
end
