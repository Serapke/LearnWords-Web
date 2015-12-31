class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  def new
		@admin = Admin.new
	end

  def edit
	end

  def show
  end

	def create
		@admin = Admin.new(admin_params)
		if @admin.save
			session[:admin_id] = @admin.id
			redirect_to '/adminksksk'
		else
			redirect_to '/admin/signup'
		end
	end

  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

	private
	def admin_params
		params.require(:admin).permit(:username, :email, :image, :password)
	end
  def set_admin
    @admin = Admin.find(params[:id])
  end
end
