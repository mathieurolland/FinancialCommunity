class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @array = ["http://img.wallpaperfolder.com/f/4AC6CEC2B6CA/stock-exchange.jpg", "https://static.pexels.com/photos/25970/pexels-photo.jpg"]
  end

  def actus
  end

  def dashboard
  end

end
