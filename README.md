# Bancbox

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'bancbox'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bancbox

## Usage  

For Api please check https://invest.bancbox.com/apis_create_investor.html


irb > require 'bancbox'

Investor 

1. Bancbox.create_investor_with_ssn(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,created,ssn)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/createInvestor

2. Bancbox.create_investor(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,created)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/createInvestor

3. Bancbox.get_investor(apikey,secret,url,id)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/getInvestorDetails

Issuer 

1. Bancbox.create_issuer(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,dob,ssn,internal,created)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/createIssuer

2. Bancbox.get_issuer(apikey,secret,url,id)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/getIssuerDetails

LLc

1. Bancbox.create_llc_investor_with_ssn(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,created,ssn,llc)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/createInvestor

2. Bancbox.create_llc_investor(apikey,secret,url,fname,lname,email,phone,address_1,address_2,city,state,zip,created,llc)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/createInvestor

3. Bancbox.get_llc_investor(apikey,secret,url,id)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/getInvestorDetails

Funds

1. Bancbox.create_fund_account(apikey,secret,account_number,client_ip,routing_number,type_account,amount,memo,holder_name,fund_text,investor_id,url,agreement_type,document_name,document_version,sign)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/fundAccount

2. Bancbox.create_fund_escrow(apikey,secret,url,investor_id,client_ip,escrow_id,amount,fund_text)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/fundEscrow
   
3. Bancbox.withdraw_funds(apikey,secret,url,account_number,client_ip,routing_number,type_account,amount,memo,holder_name,fund_text,method,inv_id)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/withdrawFunds

Escrow

1. Bancbox.open_escrow(apikey,secret,url,name,issuer_id,start_date,close_date,funding_goal,minimum_funding_amount,maximum_funding_amount,platform_signatory_email,issuer_signatory_email,platform_sign_name,platform_sign_title,issuer_sign_name,issuer_sign_title,created)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/createEscrowAccount

2. Bancbox.cancel_escrow(apikey,secret,url,escrow_id,reason)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/cancelEscrow

3. Bancbox.close_escrow(apikey,secret,url,escrow_id,reason)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/closeEscrow

4. Bancbox.get_escrow(apikey,secret,url,id)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/getEscrow

5. Bancbox.modify_escrow(apikey,secret,url,escrow_id,close_date,over_funding_amount,funding_goal)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/updateEscrowAccount

Proceeds Scheduler

1. Bancbox.create_proceeds_scheduler(apikey,secret,url,escrow_id,close_date,over_funding_amount,funding_goal)
   Url: https://sandbox-api.bancboxcrowd.com/crowd/v0/cfp/createProceedsSchedules


TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
