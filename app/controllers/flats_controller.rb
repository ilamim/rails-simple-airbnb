class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
    set_flat
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
