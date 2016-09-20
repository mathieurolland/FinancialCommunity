class ValueController < ApplicationController
  def index
    ids = markets_params[:markets]
    @markets = Market.where(id: ids)
    values = Value.where(market: ids)
    @value_list = {}
    @markets.each do |market|
      @value_list[market.name] = values.select { |value| value.market_id == market.id }
    end
  end

  def create
  end

  def update
  end

  private

  def markets_params
    params.require(:id_markets).permit!
  end

end
