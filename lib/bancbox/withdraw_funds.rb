require 'net/http'
require "uri"

module Bancbox
 class WithdrawFunds

  def create_withdraw_fund(apikey,secret,url,account_number,client_ip,routing_number,type_account,amount,memo,holder_name,fund_text,method,inv_id)
   
 
    params = {
            :api_key => apikey,
            :secret => secret,
            :bank_account_number => account_number,
            :bank_account_type => type_account,
            :bank_account_holder => holder_name,
            :bank_account_routing => routing_number,
            :text => fund_text,
            :client_ip_address => client_ip,
            :amount => amount,
            :memo => memo , 
            :submit_timestamp => DateTime.now.strftime('%Y-%m-%d %H:%M:%S').to_s,
            :method => method,
            :issuer_id => inv_id
           }
  
 
    uri = URI.parse(url)
    req = Net::HTTP::Post.new(uri.path)
    req.set_form_data(params)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true 
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = http.request(req)
    response 
    
  end
 end
end
