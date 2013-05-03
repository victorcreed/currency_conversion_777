require "currency_conversion/gateway.rb"
module CurrencyConversion
  module Model
    def conversion_fields(*fields)
      fields.each do |field|
        define_method "#{field.to_s}_to" do |args, from="usd"|
          return self.send(field) if args.nil? || ( args == "usd" && from == "usd"  )
          @gateway = CurrencyConversion::Gateway.new value: self.send(field), from: from , to: args
          @gateway.convert_payment
        end
      end
    end
  end
end
