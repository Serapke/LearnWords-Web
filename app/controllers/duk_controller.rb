class DukController < ApplicationController
  before_action :set_duk, only: [:show, :edit, :update, :destroy]

  def index
    @duks = Duk.all
  end

  def new
    @duk = Duk.new
  end

  def edit
  end

  def show
  end

  def update
    respond_to do |format|
      if @duk.update(duk_params)
        format.html { redirect_to @duk, notice: 'Team member was successfully updated.' }
        format.json { render :show, status: :ok, location: @duk }
      else
        format.html { render :edit }
        format.json { render json: @team_member.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @duk = Duk.new(duk_params)

    respond_to do |format|
      if @duk.save
        format.html { redirect_to '/duk', notice: 'Duk was successfully created.' }
        format.json { render :show, status: :created, location: @duk }
      else
        format.html { render :new }
        format.json { render json: @duk.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @duk.destroy
    respond_to do |format|
      format.html { redirect_to '/duk', notice: 'Duk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duk
      @duk = Duk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duk_params
      params.require(:duk).permit(:query, :answer)
    end
end
