class LoansController < ApplicationController

	def create
		Loan.create(loan_params)
		redirect_to root_path
	end

	private

	def loan_params
		params.require(:loan).permit(:name, :amoung, :date, :description)
	end
end
