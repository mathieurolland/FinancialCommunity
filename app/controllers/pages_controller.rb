class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @array = ["http://img.wallpaperfolder.com/f/4AC6CEC2B6CA/stock-exchange.jpg", "https://static.pexels.com/photos/25970/pexels-photo.jpg"]
    @array_down = ["http://northwesternbusinessreview.org/wp-content/uploads/2016/05/finance-photo-.jpg", "http://d1oii8v5a6pxkw.cloudfront.net/wp-content/uploads/2015/07/Finance-1.jpg","http://image.shutterstock.com/z/stock-photo-finance-business-background-stock-exchange-chart-graph-abstract-stock-market-diagram-trade-268543904.jpg"]
  end

  def actus
  end

  def dashboard
  end

end
