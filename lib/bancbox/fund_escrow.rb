require 'net/http'
require "uri"
require 'date'

module Bancbox
 class FundEscrow
	
	  def create_fund_escrow(apikey,secret,url,investor_id,client_ip,escrow_id,amount,fund_text)
	   
	   params = {
	            :api_key => apikey,
	            :secret => secret,
	            :text => fund_text,
	            :client_ip_address => client_ip,
	            :amount => amount,
	            :investor_id => investor_id,
	            :escrow_id => escrow_id , 
	            :submit_timestamp => DateTime.now.strftime('%Y-%m-%d %H:%M:%S').to_s
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