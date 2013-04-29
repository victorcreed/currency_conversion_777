require 'rest_client'
require 'json'
module CurrencyConversion
  class Gateway
    def initialize(params={})
      @options = params
    end
    def convert_payment
      response = RestClient.get("http://www.google.com/ig/calculator?hl=en&q=#{@options[:value]}#{@options[:from].upcase}=?#{@options[:to].upcase}").body
      response.gsub!(/(lhs|rhs|error|icc)/, '"\1"')
      response_hash = JSON.parse(response)

      if response_hash['error'].nil? or response_hash['error'] == ''
        encoding_options = {
          :invalid           => :replace,  
          :undef             => :replace, 
          :replace           => '',      
          :universal_newline => true    
        }
        response_hash['rhs'].encode(Encoding.find('ASCII'), encoding_options).to_f
      else
        raise Exception, "An error occurred: #{response_hash['error']}"
      end
    end
  end
end
