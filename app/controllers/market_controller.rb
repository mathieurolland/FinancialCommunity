class MarketController < ApplicationController

  def index
    @markets = Market.all
  end

end
