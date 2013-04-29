require "currency_conversion/gateway.rb"
module CurrencyConversion
  module Model
    def conversion_fields(*fields)
      fields.each do |field|
        define_method "#{field.to_s}_to" do |args|
          return self.send(field) if args.nil? || args == "usd"
          @gateway = CurrencyConversion::Gateway.new value: self.send(field), from: "usd", to: args
          @gateway.convert_payment
        end
      end
    end
  end
end
