class SiteController < ApplicationController
  def home
  end

  def benefits
  end

  def download
  end

  def download_app
	   send_file Rails.root.join('app/assets/downloads', 'Setup.exe'), type: "application/exe"
  end

  def contact
  end

  def contact_send_email
  	@name = params[:name]
  	@email = params[:email]
  	@comment = params[:comment]

  	ContactMailer.send_message(@name, @email, @comment).deliver
  end
end
