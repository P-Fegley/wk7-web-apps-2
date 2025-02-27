class BitcoinsController < ApplicationController

  def index
    # add backend code
    @bitcoin = params["amount"]  # 'params' accesses the query string
      # Note that this "amount" has to match the "name" of your form in the index file

    # connect to the Blockchain.com Exchange Rates API
    # DON'T CHANGE THIS CODE
    # ----------------------
    require "net/http"
    require "json"
    url = "https://blockchain.info/ticker"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    bitcoin_data = JSON.parse(response)
    # ----------------------
    
    # using the API, extract current rate of bitcoin in USD
    @usd_rate = bitcoin_data["USD"]["last"]
    
    # calculate value in USD of user's bitcoin
    @usd_value = @usd_rate * @bitcoin.to_f

    # render bitcoins/index view  # Don't technically need this if your files are in their standard place
  end

end