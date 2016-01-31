class SiteController < ApplicationController
  before_action :set_stat, only: [:download, :download_app_win, :download_app_mac]
  def home
  end

  def benefits
  end

  def download
  end

  def download_app_win
    count = @stat.downloads+1
    @stat.update_attributes(downloads: count)
	   send_file Rails.root.join('app/assets/downloads', 'Setup.exe'), type: "application/exe"
  end

  def download_app_mac
    count = @stat.downloads+1
    @stat.update_attributes(downloads: count)
    send_file Rails.root.join('app/assets/downloads', 'WordsApp.dmg'), type: "application/dmg"
  end

  def contact
  end

  def blog
  end

  def contact_send_email
  	@name = params[:name]
  	@email = params[:email]
  	@comment = params[:comment]
  	ContactMailer.send_message(@name, @email, @comment).deliver
  end

  private
    def set_stat
      @stat = Stat.find(1)
    end
end
