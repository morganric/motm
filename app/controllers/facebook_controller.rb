class FacebookController < ApplicationController

  def index
    @mixes = Mix.all
    @mix = Mix.new

    respond_to do |format|
      format.html 
      format.json { render json: @mixes }
    end
  end

end
