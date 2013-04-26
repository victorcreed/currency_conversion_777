module CurrencyConversion
  module ClassMethods
    def conversion_fields(*fields)
      fields.each do |field|
        define_method "#{field}_

      end
    end
  end
end
