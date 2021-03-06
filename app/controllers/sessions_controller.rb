class SessionsController < ApplicationController
	include ApplicationHelper
	
  def new
  	redirect_to home_path if logged_in?
  end


	def create
		funcionario = Funcionario.find_by(RF: params[:session][:rf].downcase)
		if funcionario && funcionario.authenticate(params[:session][:password])
		  log_in(funcionario)
		  redirect_to home_path
		  # flash[:notice] = "You have successfully logged out."
		else
		  render 'new'
		end
	end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
end
