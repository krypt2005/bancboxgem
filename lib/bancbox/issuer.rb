require 'net/http'
require "uri"
require 'json'
require 'openssl'
module Bancbox
  class Issuer
		
		def create_issuer(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,ssn,internal,created)
		   params = {
		            :api_key => apikey,
		            :secret => secret,
		            :first_name => fname,
		            :last_name => lname,
		            :email => email,
		            :phone => phone,
		            :address_1 => address_1,
		            :address_2 => address_2,
		            :created_by => created,
		            :internal => internal,
		            :state => state,
		            :city => city,
		            :zip => zip,
		            :dob => dob,
		            :ssn => ssn}
		   
		    uri = URI.parse(url)
		    req = Net::HTTP::Post.new(uri.path)
		    req.set_form_data(params)
		    http = Net::HTTP.new(uri.host, uri.port)
		    http.use_ssl = true 
		    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
		    response = http.request(req)
		    response
		    
		  end
		  
		  def get_issuer(apikey,secret,url,id)
		      params = {
		            :api_key => apikey,
		            :secret => secret,
		            :issuer_id => id
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