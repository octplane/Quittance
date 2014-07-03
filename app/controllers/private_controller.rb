class PrivateController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Bienvenue"
  end
end
