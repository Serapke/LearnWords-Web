class AdminsController < ApplicationController
  def new
		@admin = Admin.new
	end

	def create
		@admin = Admin.new(admin_params)
		if @admin.save
			session[:admin_id] = @admin.id
			redirect_to '/admin'
		else
			redirect_to '/admin/signup'
		end
	end

	def edit
		@admin = Admin.find_by_id(params[:id])
	end

  def update
    @admin = Admin.find(params[:id])
    if @admin.update(admin_params)
      redirect_to '/admin'
    else
      render 'edit'
    end
  end

	private
	def admin_params
		params.require(:admin).permit(:username, :email, :image, :password)
	end
end
