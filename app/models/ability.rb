class Ability
  include CanCan::Ability

  def initialize(user)

     can :update, User do |u|
        u == user
     end

     can :read, User do |u|
        u == user
     end
     
  end
end
