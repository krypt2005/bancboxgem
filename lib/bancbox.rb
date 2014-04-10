require "bancbox/version"
require 'bancbox/investor'

module Bancbox


  def self.hi
    puts "Hello world!"
    
  end
  
  def self.create_investor
    puts "Create Investor"
    investor = Investor.new()
    investor.hello
  end
  
  
end
