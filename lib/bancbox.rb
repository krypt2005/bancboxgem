require "bancbox/version"
require "bancbox/investor"
require "bancbox/issuer"
require "bancbox/angel_fund"
require "bancbox/fund_account"
require "bancbox/fund_escrow"
require "bancbox/withdraw_funds"
require "bancbox/escrow"
require "bancbox/proceeds_scheduler"
require 'json'
module Bancbox
  
  def self.create_investor_with_ssn(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,created,ssn)
     investor_obj = Investor.new()
     @investor = investor_obj.create_investor_with_ssn(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,created,ssn)
     obj = JSON.parse(@investor.body)
     if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
   def self.create_investor(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,created)
     investor_obj = Investor.new()
     @investor = investor_obj.create_investor(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,created)
     obj = JSON.parse(@investor.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
  def self.get_investor(apikey,secret,url,id)
     investor_obj = Investor.new()
     @investor = investor_obj.get_investor(apikey,secret,url,id)
     obj = JSON.parse(@investor.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
  def self.create_issuer(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,ssn,internal,created)
     issuer_obj = Issuer.new()
     @issuer = issuer_obj.create_issuer(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,ssn,internal,created)
     obj = JSON.parse(@issuer.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
  def self.get_issuer(apikey,secret,url,id)
     issuer_obj = Issuer.new()
     @issuer = issuer_obj.get_issuer(apikey,secret,url,id)
     obj = JSON.parse(@issuer.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
  def self.create_llc_investor_with_ssn(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,created,ssn,llc)
     investor_obj = AngelFund.new()
     @investor = investor_obj.create_investor_with_ssn(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,created,ssn,llc)
     obj = JSON.parse(@investor.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  def self.create_llc_investor(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,created,llc)
     investor_obj = AngelFund.new()
     @investor = investor_obj.create_investor(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,created,llc)
     obj = JSON.parse(@investor.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
  def self.get_llc_investor(apikey,secret,url,id)
     investor_obj = AngelFund.new()
     @investor = investor_obj.get_investor(apikey,secret,url,id)
     obj = JSON.parse(@investor.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
  def self.create_fund_account(apikey,secret,account_number,client_ip,routing_number,type_account,amount,memo,holder_name,fund_text,investor_id,url,agreement_type,document_name,document_version,sign)
     fund_obj = FundAccount.new()
     @fund_obj = fund_obj.create_fund_account(apikey,secret,account_number,client_ip,routing_number,type_account,amount,memo,holder_name,fund_text,investor_id,url,agreement_type,document_name,document_version,sign)
     obj = JSON.parse(@fund_obj.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
  def self.create_fund_escrow(apikey,secret,url,investor_id,client_ip,escrow_id,amount,fund_text)
     fund_esc_obj = FundEscrow.new()
     @fund_esc_obj = fund_esc_obj.create_fund_escrow(apikey,secret,url,investor_id,client_ip,escrow_id,amount,fund_text)
     obj = JSON.parse(@fund_esc_obj.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
  def self.withdraw_funds(apikey,secret,url,account_number,client_ip,routing_number,type_account,amount,memo,holder_name,fund_text,method,inv_id)
     fund_obj = WithdrawFunds.new()
     @fund_obj = fund_obj.create_withdraw_fund(apikey,secret,url,account_number,client_ip,routing_number,type_account,amount,memo,holder_name,fund_text,method,inv_id)
     obj = JSON.parse(@fund_obj.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
  def self.open_escrow(apikey,secret,url,name,issuer_id,start_date,close_date,funding_goal,minimum_funding_amount,maximum_funding_amount,platform_signatory_email,issuer_signatory_email,platform_sign_name,platform_sign_title,issuer_sign_name,issuer_sign_title,created)
     escrow = Escrow.new()
     @escrow = escrow.open_escrow(apikey,secret,url,name,issuer_id,start_date,close_date,funding_goal,minimum_funding_amount,maximum_funding_amount,platform_signatory_email,issuer_signatory_email,platform_sign_name,platform_sign_title,issuer_sign_name,issuer_sign_title,created)
     obj = JSON.parse(@escrow.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
  def self.cancel_escrow(apikey,secret,url,escrow_id,reason)
     escrow = Escrow.new()
     @escrow = escrow.cancel_escrow(apikey,secret,url,escrow_id,reason)
     obj = JSON.parse(@escrow.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end

    def self.close_escrow(apikey,secret,url,escrow_id,reason)
     escrow = Escrow.new()
     @escrow = escrow.close_escrow(apikey,secret,url,escrow_id,reason)
     obj = JSON.parse(@escrow.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
    def self.get_escrow(apikey,secret,url,id)
     escrow = Escrow.new()
     @escrow = escrow.get_escrow(apikey,secret,url,id)
     obj = JSON.parse(@escrow.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end
  
    def self.modify_escrow(apikey,secret,url,escrow_id,close_date,over_funding_amount,funding_goal)
     escrow = Escrow.new()
     @escrow = escrow.modify_escrow(apikey,secret,url,escrow_id,close_date,over_funding_amount,funding_goal)
     obj = JSON.parse(@escrow.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end  
  
    def self.create_proceeds_scheduler(apikey,secret,url,escrow_id,close_date,over_funding_amount,funding_goal)
     proceeds = ProceedsScheduler.new()
     @proceeds = proceeds.create_proceeds_scheduler(apikey,secret,url,escrow_id,close_date,over_funding_amount,funding_goal)
     obj = JSON.parse(@proceeds.body)
	 if !obj['error'].nil?
       obj['error']['message']
     else
	   obj
	 end
  end  
  
end
