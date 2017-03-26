class CreditsController < ApplicationController
  def index
  	@loanList = Loan.all
  end

  def create
  	redirect_to root_path
  end
end
