class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :edit, :destroy, :update]
  def index
    if params[:query].present?
      @query = params[:query]
      @flats = Flat.where("name LIKE '%#{params[:query]}%'")
    else
      @flats = Flat.all
    end
  end

  def new
    @flat = Flat.new
  end

  def show; end

  def edit; end

  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :pricer_per_night, :number_of_guests, :picture_url)
  end

end
