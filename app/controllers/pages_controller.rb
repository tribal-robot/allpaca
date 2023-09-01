class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def user_profile
    @user = current_user
    @alpacas = Alpaca.where(user: @user)
  end
end
