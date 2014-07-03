class QuittanceController < ApplicationController
  before_action :authenticate_user!

  def list
  end

  def edit
    @quittance = Quittance.new
    @locs = Location.where(user: current_user)
  end
end
