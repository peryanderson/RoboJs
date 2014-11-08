class GamesController  < ApplicationController
  include ApplicationHelper

  before_filter :authorized?
  
  def create
    unless game_params["challenge_id"].empty?
      @game = Game.find_by(user_id: current_user.id, challenge_id: game_params["challenge_id"])
    else
      @game = Game.create(game_params)
      @game.update_attributes(user_id: current_user.id, challenge_id: params[:challenge_id])
    end

    @challenge = Challenge.find(@game.challenge_id)
    redirect_to challenge_path(@challenge)
  end

  def update
    @user_input = params[:status_string]
    
    @challenge = Challenge.find(params[:challenge_id])
    @game = Game.find_by(user: current_user, challenge: @challenge)
    @game.update_attributes(status_string: @user_input, instructions: params[:instructions])
    
    if @user_input == @challenge.solution
      @game.update_attribute(:completed, true)
      
      @fail_message = ""
      @success_message = "Great! Try the next challenge."
      

    else
      @success_message = ""
      @fail_message = "FAIL. TRY AGAIN."
    end
    render "challenges/show"
  end

  private

  def game_params
    params.require(:game).permit!
  end
end
