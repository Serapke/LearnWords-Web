class SessionsController < ApplicationController
  def new
	end

  def destroy
    #@session = Session.find(params[:admin_id])
    #@session.destroy
		session[:admin_id] = nil
		redirect_to '/'
	end

	def create
		@admin = Admin.find_by_username(params[:session][:username])
		if @admin && @admin.authenticate(params[:session][:password])
			session[:admin_id] = @admin.id
			redirect_to(:back)
		else
			flash.now.alert = "Invalid username or password"
			redirect_to(:back)
		end
	end


end
