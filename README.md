currency_conversion_777
=======================
### Installation

<pre>gem install currency_conversion</pre> 

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

For simple ruby just do as follows,
<pre>
     include CurrencyConversion::InstanceMethods
     make_transaction(ammount, from, to) # Ammount is the value to be converted whereas from and to are currencies.
</pre>
### Default

The currency is us dollars and it is using google currency api's. 
