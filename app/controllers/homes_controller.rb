class HomesController < ApplicationController
  def index
    @Homes = homes.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
