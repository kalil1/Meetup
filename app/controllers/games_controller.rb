class GamesController < ApplicationController
  before_action :authenticate_user!

  def index
    @games = Game.near([current_user.latitude, current_user.longitude], 150)
  end

  def new
    @game = current_user.games.build
  end

  def create
    @game = current_user.games.build(game_params)
    if @game.save
      redirect_to games_path, notice: 'Game created successfully!'
    else
      render :new
    end
  end

  def join
    @game = Game.find(params[:id])
    current_user.players.create(game: @game)
    redirect_to games_path, notice: 'Joined game successfully!'
  end

  private

  def game_params
    params.require(:game).permit(:activity_id, :location)
  end
end
