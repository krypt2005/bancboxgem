require 'net/http'
require "uri"
require 'json'

module BancBox
  class Investor
	  def self.create_investor(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,ssn,dob)
	   puts "-----------"+dob.inspect
	   params = {
	            :api_key => apikey,
	            :secret => secret,
	            :first_name => fname,
	            :last_name => lname,
	            :email => email,
	            :phone => phone,
	            :address_1 => address_1,
	            :address_2 => address_2,
	            :created_by => 'Megh',
	            :internal => '0',
	            :state => state,
	            :city => city,
	            :zip => zip,
	            :ssn => ssn,
	            :dob => dob}
	   
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