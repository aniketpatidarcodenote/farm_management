class FarmersController < ApplicationController
  def index
  end

  def show
    @farmer = Farmer.find_by_id(params[:id])
  end

  def new
    @farmer = Farmer.new
  end

  def create
    @farmer = Farmer.new(farmer_params)
    if @farmer.save
      session[:farmer_id] = @farmer.id
      redirect_to @farmer
    else
      render :new
    end
  end

  def edit 
    @farmer = Farmer.find(params[:id])
  end

  private

  def farmer_params
    params.require(:farmer).permit(:name, :email, :password, :password_confirmation)
  end
end
