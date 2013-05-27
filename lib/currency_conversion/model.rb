require "currency_conversion/gateway.rb"
module CurrencyConversion
  module Model
    def self.included base
      base.send :include, InstanceMethods
      base.extend ClassMethods
    end
    module ClassMethods
      def conversion_fields(*fields)
        fields.each do |field|
          define_method "#{field.to_s}_to" do |args, from="usd"|
            return self.send(field) if args.nil? || ( args == "usd" && from == "usd"  )
            make_transaction self.send(field), from, args
          end
        end
      end
    end
    module InstanceMethods
      def make_transaction(ammount, from, to)
          @gateway = CurrencyConversion::Gateway.new value: ammount, from: from , to: to
          @gateway.convert_payment
      end
    end
  end
end
