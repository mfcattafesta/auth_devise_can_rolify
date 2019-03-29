class Ability
  include CanCan::Ability
  # We defined that the client can perform any action on his own products.
  # The admin can perform any action on all products and the not logged in user can only read (look over) all products.
  def initialize(user)
    user ||= User.new
    if user.client?
      can :manage, Product, user_id: user.id
    elsif user.admin?
      can :manage
    else
      can :read, :all
    end
  end
end
