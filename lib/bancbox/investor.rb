require 'net/http'
require "uri"
require 'json'
require 'openssl'
module Bancbox
  class Investor
      
	  def create_investor_with_ssn(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,created,ssn)
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
		            :internal => '0',
		            :state => state,
		            :city => city,
		            :zip => zip,
		            :dob => dob,
		            :ssn=>ssn}
		   
		    uri = URI.parse(url)
		    req = Net::HTTP::Post.new(uri.path)
		    req.set_form_data(params)
		    http = Net::HTTP.new(uri.host, uri.port)
		    http.use_ssl = true 	
		    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
		    
		    response = http.request(req)
		    response
	  end
	  
	  def create_investor(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,created)
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
		            :internal => '1',
		            :state => state,
		            :city => city,
		            :zip => zip,
		            :dob => dob
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
	  
	  def get_investor(apikey,secret,url,id)
	      params = {
	            :api_key => apikey,
	            :secret => secret,
	            :investor_id => id
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