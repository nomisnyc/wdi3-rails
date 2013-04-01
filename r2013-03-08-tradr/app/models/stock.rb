# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  ticker     :string(255)
#  init_value :decimal(, )
#  shares     :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ActiveRecord::Base
  attr_accessible :ticker, :init_value,:shares,:user_id
  belongs_to :user, :inverse_of => :stocks
  before_save :stock_init

  def current_value
    YahooFinance::get_quotes(YahooFinance::StandardQuote, self.ticker.upcase)[self.ticker.upcase].lastTrade
  end

  def stocks_value
    self.current_value * self.shares
  end

  def stock_init
    self.init_value = self.current_value
  end



end

