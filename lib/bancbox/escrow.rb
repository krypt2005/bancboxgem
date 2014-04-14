require 'net/http'
require "uri"

module Bancbox
 class Escrow

  def open_escrow(apikey,secret,url,name,issuer_id,start_date,close_date,funding_goal,minimum_funding_amount,maximum_funding_amount,platform_signatory_email,issuer_signatory_email,platform_sign_name,platform_sign_title,issuer_sign_name,issuer_sign_title,created)

   params = {
            :api_key => apikey,
            :secret => secret,
            :name => name,
            :issuer_id => issuer_id,
            :start_date => start_date,
            :close_date => close_date,
            :funding_goal => funding_goal,
            :minimum_funding_amount => minimum_funding_amount,
            :created_by => created,
            :maximum_funding_amount => maximum_funding_amount,
            :contract_doc_reference_id => 'cod_sdReffes',
            :securities_offered => 'EQUITY',
            :platform_signatory_name => platform_sign_name,
            :platform_signatory_title => platform_sign_title,
            :platform_signatory_email => platform_signatory_email,
            :issuer_signatory_name => issuer_sign_name,
            :issuer_signatory_title => issuer_sign_title,
            :issuer_signatory_email => issuer_signatory_email
         
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
  
  def cancel_escrow(apikey,secret,url,escrow_id,reason)
    params = {
            :api_key => apikey,
            :secret => secret,
            :escrow_id => escrow_id,
            :reason => reason
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
  
  def close_escrow(apikey,secret,url,escrow_id,reason)
    params = {
            :api_key => apikey,
            :secret => secret,
            :escrow_id => escrow_id,
            :reason => reason
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
  
    def modify_escrow(apikey,secret,url,escrow_id,close_date,over_funding_amount,funding_goal)
    params = {
            :api_key => apikey,
            :secret => secret,
            :id => escrow_id,
            :close_date => close_date,
            :over_funding_amount => over_funding_amount,
            :funding_goal => funding_goal
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
  
  def get_escrow(apikey,secret,url,id)
      params = {
            :api_key => apikey,
            :secret => secret,
            :escrow_id => id
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