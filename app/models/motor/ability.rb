module Motor
  class Ability
    include CanCan::Ability

    def initialize(user, _request)
      can :manage, Activity, { user: user }
      can :manage, User, id: user.id
    end
  end
end