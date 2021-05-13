class HomesController < ApplicationController
  def index
    @Homes = homes.all
  end
  
end
