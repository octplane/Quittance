class IndexController < ApplicationController
  def show
    if user_signed_in?
      redirect_to  controller: :private, action: :index
    end
  end

  def about
  end

  def contact
  end
end
