module BancBox
  module Config
    
    def self.base_url=(url)
      @base_url = url
    end

    def self.api_key=(key)
      @api_key = key
    end

    def self.api_secret=(secret)
      @api_secret = secret
    end

  end
end
