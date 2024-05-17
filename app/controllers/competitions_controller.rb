class CompetitionsController < ApplicationController
  def new
    @competition = Competition.new
    @game = Game.find(params[:game_id])
  end

  def create
    @game = Game.find(params[:game_id])
    @competition = Competition.new(competition_params)
    @competition.opp = User.find_by_gamer_tag(params[:competition][:gamer_tag])
    @competition.user = current_user
    @competition.game = Game.find(params[:game_id])
    @competition.platform = @competition.game.platform
    if @competition.save
      redirect_to competition_invitation_path(@competition)
    else
      render "new", status: :unprocessable_entity
    end

  end

  def invitation

  end

  def rematch
    create
  end

  private

  def competition_params
    params.require(:competition).permit(:wager,:gamer_tag)
  end

  def set_users
    @user1 = User.find(params[:user_id])
    @user2 = User.find(params[:opp_id])
  end


end
