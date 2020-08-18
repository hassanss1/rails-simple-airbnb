class FlatsController < ApplicationController
  before_action :find_flat, only: [:show]
  def index
    @flats = Flat.all
  end

  def show; end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end
end
