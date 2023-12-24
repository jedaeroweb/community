class AdminAbility
  include CanCan::Ability

  def initialize(admin)
    if admin
      can :read, [Ad]
      if admin.role? :super_administrator
        can :manage, :all
      elsif admin.role? :administrator
        can :manage, :all
        cannot :read, [Company]
        cannot :create, [Company]
        cannot :edit, [Company]
        cannot :delete, [Company]
      elsif admin.role? :sub_administrator
        can :manage, :all
        cannot :read, [Company]
        cannot :create, [Company, Branch]
        cannot :edit, [Company, Branch]
        cannot :delete, [Company, Branch]
      elsif admin.role? :operator
        can :manage, :all
        cannot :read, [Company]
        cannot :create, [Company, ProductCategory, Product]
        cannot :edit, [Company, ProductCategory, Product]
        cannot :delete, [Company, ProductCategory, Product]
      elsif admin.role? :sub_operator
        can :manage, :all
        cannot :read, [Company, Branch, Group, ProductCategory, FacilityCategory, CourseCategory, Product]
        cannot :create, [Company, Branch, Admin, Group, ProductCategory, FacilityCategory, CourseCategory, Product]
        cannot :edit, [Company, Branch, Admin, Group, ProductCategory, FacilityCategory, CourseCategory, Product, Order, Account]
        cannot :delete, [Company, Branch, Admin, Group, ProductCategory, FacilityCategory, CourseCategory, Product, Order, Account]
      elsif admin.role? :reader
        can :read, :all
        cannot :read, [Branch, Admin, Group, ProductCategory, FacilityCategory, CourseCategory]
      end
    else
      cannot :manage, :all
    end
  end
end
