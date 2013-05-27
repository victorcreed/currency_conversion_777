currency_conversion_777
=======================
### Installation

<code>gem install currency_conversion</code> 

### Usage

For usage just include the include CurrencyConversion::Mode in the model you want to convert the currency. For example,

<pre>
  class User
     include CurrencyConversion::Model
     conversion_field :credit
     def credit
      50
     end
  end
  @user.credit_to "gbp" # This covert the value in the great britain pound.
  @user.credit_to "gbp", "eur" # This covert the value in the great britain pound to euro.  
</pre> 

