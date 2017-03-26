class CreditsController < ApplicationController
  def index
  	@loans = Loan.order(created_at: :desc).all
  end

  def create
  	redirect_to root_path
  end
end
