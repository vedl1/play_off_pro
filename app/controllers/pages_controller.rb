class PagesController < ApplicationController
  def home
  end

  def dashboard
    @competitions = Competition.where(opp_id: current_user.id)
  end
end
