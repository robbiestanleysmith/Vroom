class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
  end

  def create?
  end

  def destroy?
    record.user == user
  end
end
