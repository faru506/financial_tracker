class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: 'Tpk_a2683a385ffa4ed4ac6f626501e4f3dc', endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(ticker_symbol)
  end


end
