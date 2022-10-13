class SessionsController < ApplicationController
  def new
  end

  def create
    farmer = Farmer.find_by(email: params[:email])
    if farmer.present? && farmer.authenticate(params[:password])
      session[:farmer_id] = farmer.id
      redirect_to farmer
    else
      render :new
    end
  end

  def destroy
    session.delete(:farmer_id)
    @current_farmer = nil
    redirect_to root_path
  end
end
