class LoansController < ApplicationController

	def create
		Loan.create(loan_params)
		redirect_to root_path
	end

	def edit
		@loan = Loan.find(params[:id])
	end

	def update
		@loan = Loan.find(params[:id])
		if @loan.update_attributes(loan_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	def destroy
		@loan = Loan.find(params[:id])
		@loan.destroy
		redirect_to root_path
	end

	private

	def loan_params
		params.require(:loan).permit(:name, :amoung, :date, :description, :user_id)
	end
end
