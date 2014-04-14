require 'net/http'
require "uri"

module Bancbox
 class ProceedsScheduler

  def create_proceeds_scheduler(apikey,secret,url,schedule_date,investor_id,amount,escrow_id)
  
   params = {
            :api_key => apikey,
            :secret => secret,
            :escrow_id => escrow_id,
            'schedule_date[0]' => schedule_date,
            'amount[0]' => amount,
            'investor_id[0]' => investor_id , 
            :schedule_count => 1
            
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