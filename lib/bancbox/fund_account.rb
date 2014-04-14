require 'net/http'
require "uri"
require 'openssl'
require 'date'
module Bancbox
 class FundAccount

  def create_fund_account(apikey,secret,account_number,client_ip,routing_number,type_account,amount,memo,holder_name,fund_text,investor_id,url,agreement_type,document_name,document_version,sign)

   params = {
            :api_key => apikey,
            :secret => secret,
            'bank_account_number' => account_number.to_s,
            :bank_account_type => type_account,
            :bank_account_holder => holder_name,
            :bank_account_routing => routing_number,
            :text => fund_text,
            :link_bank_account => 'N',
            :client_ip_address => client_ip,
            :amount => amount,
            :memo => memo , 
            :investor_id => investor_id,
            :agreement_type => agreement_type,
            :document_name => document_name,
            :document_version => document_version,
            :represented_signature => sign,
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
