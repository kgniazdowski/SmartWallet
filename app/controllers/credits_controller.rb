class CreditsController < ApplicationController
  def index
  	if params[:search]
  		@loans = Loan.search(params[:search]).order(created_at: :desc)
  	else
  		@loans = Loan.order(created_at: :desc).all
  	end
  end

  def create
  	redirect_to root_path
  end
end
