class StockController < ApplicationController

def stock
end

def stock_result
  stock = params[:stock].upcase
  @stock = YahooFinance::get_quotes(YahooFinance::StandardQuote, "#{stock}")["#{stock}"].lastTrade
  end

end
