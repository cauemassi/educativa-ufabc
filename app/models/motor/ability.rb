module Motor
  class Ability
    include CanCan::Ability

    def initialize(user, _request)
      can :manage, Activity, { user_id: user.id }
      can :read, Question, { activity: { user_id: user.id } }
      can :manage, User, id: user.id
    end
  end
end