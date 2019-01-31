class HomeController < ApplicationController

  def show
    @games = Game.all
    @categories = Activity.all
  end
end
