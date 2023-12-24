class UserAbility
  include CanCan::Ability

  def initialize(user)
    cannot :manage, :all
    can :read, [User]
    if user
      can :manage, [User, Ad, Review, UserSimulationMaterial, Request, Question, Answer, Blog]
      can :read, [Bidding]
      can :create, [Company,Contact]
      unless user.companies_count.zero?
        can :manage, [Product, Bidding, Company]
      end
    end
  end
end
