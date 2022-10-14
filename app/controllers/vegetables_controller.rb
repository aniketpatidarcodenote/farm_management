class VegetablesController < ApplicationController
  def create 
    # binding.pry
    @farmer = Farmer.find_by_id(params[:farmer_id])
    # binding.pry
    @vegetable = @farmer.vegetables.create(vegetable_params)
    redirect_to farmer_path(@farmer)
  end
  private 
  def vegetable_params
    params.require(:vegetable).permit(:name, :price, :stock)
  end
end
