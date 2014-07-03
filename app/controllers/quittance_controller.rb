class QuittanceController < ApplicationController
  before_action :authenticate_user!

  def list
  end

  def edit
    Locations
  end
end
