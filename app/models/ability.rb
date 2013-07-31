class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role? :admin
      can :manage, :all
    else
      can :create, Message
      #can :read, Message
      #can :update, Message
      #can :destroy, Message
    end
  end
end
